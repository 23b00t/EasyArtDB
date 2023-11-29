class BackupService
  def self.backup_db
    backup_dir = 'db_backups'
    FileUtils.mkdir_p(backup_dir) unless File.directory?(backup_dir)

    filename = "#{backup_dir}/#{Time.now.strftime('%Y%m%d%H%M%S')}_backup.sql"
    system("pg_dump -h db -U postgres EasyArtDB_production > #{filename}")
  end

  def self.backup_activestorage
    backup_dir = 'activestorage_backups'
    FileUtils.mkdir_p(backup_dir) unless File.directory?(backup_dir)

    source_dir = 'storage'
    backup_dir = "#{backup_dir}/#{Time.now.strftime('%Y%m%d%H%M%S')}_backup"
    system("cp -R #{source_dir} #{backup_dir}")
  end

  def self.restore_db(filename)
    system("docker-compose run --rm db psql -h db -U postgres -d EasyArtDB_production < #{filename}")
  end

  def self.restore_activestorage(source_dir)
    system("docker-compose run --rm app cp -R #{source_dir}/* storage/")
  end
end

class BackupService
  def self.backup_db
    backup_dir = 'db_backups'
    FileUtils.mkdir_p(backup_dir) unless File.directory?(backup_dir)

    filename = "#{backup_dir}/#{Time.now.strftime('%Y%m%d%H%M%S')}_backup.sql"
    execute_command("pg_dump -h db -U postgres EasyArtDB_production > #{filename}", "Database backup")
  end

  def self.backup_activestorage
    backup_dir = 'activestorage_backups'
    FileUtils.mkdir_p(backup_dir) unless File.directory?(backup_dir)

    source_dir = 'storage'
    backup_dir = "#{backup_dir}/#{Time.now.strftime('%Y%m%d%H%M%S')}_backup"
    execute_command("cp -R #{source_dir} #{backup_dir}", "Active Storage backup")
  end

  def self.restore_db(filename)
    execute_command("pg_restore -U postgres -h db -d EasyArtDB_production < #{filename}", "Database restoration")
  end

  def self.restore_activestorage(source_dir)
    execute_command("cp -R #{source_dir}/* storage/", "Active Storage restoration")
  end

  private

  def self.execute_command(command, operation)
    system(command)

    if $?.success?
      Rails.logger.info("#{operation} completed successfully.")
    else
      Rails.logger.error("#{operation} failed. Check logs for details.")
      raise StandardError, "#{operation} failed."
    end
  end
end
