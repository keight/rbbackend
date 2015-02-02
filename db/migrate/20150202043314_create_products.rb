class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.string :title
      t.string :name
      t.references :status, index: true
      t.string :SKU
      t.integer :author

      t.timestamps null: false
    end
    add_foreign_key :products, :statuses
  end
end
