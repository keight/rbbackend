class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.references :country, index: true
      t.string :title
      t.string :name
      t.string :zip_code

      t.timestamps null: false
    end
    add_foreign_key :provinces, :countries
  end
end
