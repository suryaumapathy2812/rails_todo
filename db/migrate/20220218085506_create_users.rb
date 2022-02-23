# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # * longer format
      # string = varchar, limit => 255
      # t.column "first_name", :string , :limit => 25
      # * short format
      t.string 'first_name', limit: 25
      t.string 'last_name', limit: 25
      t.string 'email', null: false, default: ''
      t.string 'password', limit: 40

      # * manual timestamp creation
      # t.datetime "created_at"
      # t.datetime "modified_at"
      # * Rails creates timestamps automatically
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
