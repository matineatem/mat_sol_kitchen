class OrderDessert < ApplicationRecord
    belongs_to :order
    belongs_to :dessert
end
