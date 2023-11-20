class BackupController < ApplicationController
  def save
    backup_location = params[:backup_location] || Rails.root.join("db", "backups")
    timestamp = Time.now.strftime("%Y%m%d%H%M%S")
    backup_file = File.join(backup_location, "backup_#{timestamp}.sql")

    # Perform the database dump
    system("pg_dump -U your_username -h your_host -d your_database > #{backup_file}")

    # Handle errors and flash messages as needed

    redirect_to root_path, notice: "Database backup completed successfully."
  end

  def restore
    # Assuming the uploaded file is named 'backup_file'
    uploaded_file = params[:backup_file]
    restore_command = "pg_restore -U your_username -h your_host -d your_database < #{uploaded_file.path}"

    # Perform the database restoration
    system(restore_command)

    # Handle errors and flash messages as needed

    redirect_to root_path, notice: "Database restoration completed successfully."
  end
end
