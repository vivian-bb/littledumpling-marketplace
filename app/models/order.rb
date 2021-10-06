class Order < ApplicationRecord
  belongs_to :menu,
  belongs_to :buyer, user, foreign_key: 'buyer_id', class_name: "User"
  belongs_to :seller, :user, foreign_key: 'seller_id', class_name: "User"
end
