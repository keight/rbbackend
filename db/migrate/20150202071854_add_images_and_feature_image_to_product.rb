class AddImagesAndFeatureImageToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :images, :string
  	add_column :products, :feature_image, :string
  end
end
