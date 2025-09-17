{ pkgs, lib, config, inputs, ... }:

{
  # Keep useful parts from the default template
  env.GREET = "ruby-dev";
  # env.PATH = ".devenv/state/.bundle/ruby/3.1.0/bin";

  # Language support
  languages.ruby = {
    enable = true;
    version = "3.1.2";
    bundler.enable = true;
    # package = pkgs.ruby_3_1;
  };

  packages = [ 
    # pkgs.ruby-lsp
    # pkgs.rubocop
    # pkgs.rubyPackages_3_1.solargraph
  ];

  languages.javascript.enable = true;
  
  # Services
  # services.redis.enable = true;
  services.postgres = {
    enable = true;
    initialDatabases = [{ name = "dev_db"; }];
    listen_addresses = "127.0.0.1";
  };

  # Scripts
  scripts.hello.exec = ''
    echo "Hello from $GREET!"
    echo "Ruby version: $(ruby --version)"
  '';
  # Environment variables for Bundler and RubyGems
  env.BUNDLE_PATH = lib.mkForce ".devenv/state/.bundle";
  env.GEM_HOME = lib.mkForce ".devenv/state/.bundle/ruby/3.1.0";
  env.GEM_PATH = lib.mkForce ".devenv/state/.bundle/ruby/3.1.0";
  env.BUNDLE_BIN = lib.mkForce ".devenv/state/.bundle/ruby/3.1.0/bin";
  env.PATH = [ "./bin" ];

  scripts.gemenv.exec = ''
    mkdir -p bin

    for tool in ruby-lsp rubocop solargraph; do
      if [ ! -x bin/$tool ]; then
        cat > bin/$tool <<'EOF'
#!/usr/bin/env bash
# Wrapper executes the Bundler-generated binstub with Bundler preloaded
exec ruby -rbundler/setup ".devenv/state/.bundle/ruby/3.1.0/bin/$(basename "$0")" "$@"
EOF
        chmod +x bin/$tool
      fi
    done
  '';

  enterShell = ''
    hello
    gemenv
  '';

  # Tests for this environment
  enterTest = ''
    echo "Running tests for Ruby environment"
    ruby --version | grep -q "ruby"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';
}
