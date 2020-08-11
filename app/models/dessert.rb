class Dessert < ApplicationRecord
    has_many :order_desserts
    has_many :orders, through: :order_desserts
end
