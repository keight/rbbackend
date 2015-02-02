json.product do
	json.name @product.name
	json.description @product.description
	json.feature_image @product.feature_image_url
	json.image @product.images.each do |image|
		json.image image.image_url
	end
end