class CreateTasks < ActiveRecord::Migration[6.1]
  def up
    create_table :tasks do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end
end
