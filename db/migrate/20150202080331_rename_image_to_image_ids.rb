class RenameImageToImageIds < ActiveRecord::Migration
  def change
	remove_column :products, :images
  end
end
