class Product < ActiveRecord::Base
  belongs_to :status

  has_many :images

  mount_uploader :feature_image, ProductUploader
end
