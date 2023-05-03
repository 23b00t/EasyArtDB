class AddDefaultToDoneInTasks < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :done, from: nil, to: false
  end
end
