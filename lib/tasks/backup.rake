namespace :backup do
  desc 'Create a backup of the PostgreSQL database'
  task db: :environment do
    backup_dir = 'db_backups'
    FileUtils.mkdir_p(backup_dir) unless File.directory?(backup_dir)

    filename = "#{backup_dir}/#{Time.now.strftime('%Y%m%d%H%M%S')}_backup.sql"
    system("pg_dump -h db -U postgres EasyArtDB_production > #{filename}")
    puts "Backup created: #{filename}"
  end

  desc 'Create a backup of Active Storage files'
  task activestorage: :environment do
    backup_dir = 'activestorage_backups'
    FileUtils.mkdir_p(backup_dir) unless File.directory?(backup_dir)

    source_dir = 'storage'
    backup_dir = "#{backup_dir}/#{Time.now.strftime('%Y%m%d%H%M%S')}_backup"
    system("cp -R #{source_dir} #{backup_dir}")
    puts "Active Storage backup created: #{backup_dir}"
  end

  desc 'Restore the PostgreSQL database from backup'
  task restore_db: :environment do
    filename = ENV['BACKUP_FILE'] || './db_backups'
    system("docker-compose run --rm db psql -h db -U postgres -d EasyArtDB_production < #{filename}")
    puts "Database restored from backup: #{filename}"
  end

  desc 'Restore Active Storage files from backup'
  task restore_activestorage: :environment do
    source_dir = ENV['ACTIVESTORAGE_BACKUP'] || './activestorage_backups'
    system("docker-compose run --rm app cp -R #{source_dir}/* storage/")
    puts "Active Storage files restored from backup: #{source_dir}"
  end
end
