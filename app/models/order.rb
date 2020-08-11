class Order < ApplicationRecord
    has_many :order_desserts
    has_many :desserts, through: :order_desserts
    belongs_to :user
end
