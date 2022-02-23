class AlterTask < ActiveRecord::Migration[6.1]

  def up
    remove_column("tasks", "user_id")
  end

  def down
    add_column("tasks", "user_id", :integer, :null => false)
  end

end
