class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :code
      t.string :language_code
      t.float :longtitude
      t.float :latitude
      t.string :currency_code
      t.string :flag_icon

      t.timestamps null: false
    end
  end
end
