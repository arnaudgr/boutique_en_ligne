class Cart < ApplicationRecord

	has_many :users
	belongs_to :item
end
