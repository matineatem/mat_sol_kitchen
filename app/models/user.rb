class User < ApplicationRecord
    has_many :orders
    has_many :desserts, through: :orders
end
