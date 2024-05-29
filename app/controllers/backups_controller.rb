class BackupsController < ApplicationController
  def save
    BackupService.backup_db
    BackupService.backup_activestorage

    flash[:notice] = "Datenbank erfolgreich gesichert!"
  rescue StandardError => e
    flash[:alert] = "Error: #{e.message}"
  ensure
    redirect_to root_path
  end

  def restore
    backup_file = params[:backup_file]
    activestorage_backup = params[:activestorage_backup]

    begin
      BackupService.restore_db(backup_file)

      BackupService.restore_activestorage(activestorage_backup)

      # workaround for migration problems
      BackupService.restore_db(backup_file)

      flash[:notice] = "Database and Active Storage restoration completed successfully."
    rescue StandardError => e
      flash[:alert] = "Error: #{e.message}"
    ensure
      redirect_to root_path
    end
  end
end
