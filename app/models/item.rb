class Item < ApplicationRecord
	has_one_attached :image_url
	has_many :carts
end
