class Api::V1::ProductsController < Api::V1::ApplicationController

	def show
		@product = Product.last
	end

	def create
		@product = Product.new(products_params)
		if @product.save
			params[:product][:images].each do |image|
				@product.images.create(image: image);
			end
			render status: :ok
		else
			head :not_acceptable
		end
	end

	private
	def products_params
		params.require(:product).permit(:description, :title, :name, :status_id, :SKU, :feature_image)
	end
end