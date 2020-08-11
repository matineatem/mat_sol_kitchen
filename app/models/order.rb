class Order < ApplicationRecord
    has_many :order_desserts
    has_many :dessert, through: :order_desserts
    belongs_to :user
end
