class Order < ApplicationRecord	
	has_many :order_food_items, dependent: :destroy
	has_many :food_items, through: :order_food_items
end
