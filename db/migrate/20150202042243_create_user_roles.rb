class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.string :role_title
      t.string :role_name
      t.string :description

      t.timestamps null: false
    end
  end
end
