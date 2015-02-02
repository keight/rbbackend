class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :active
      t.references :user_role, index: true

      t.timestamps null: false
    end
    add_foreign_key :users, :user_roles
  end
end
