class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :name
      t.string :type
      t.string :description
      t.string :image
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
