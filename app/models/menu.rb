class Menu < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  belongs_to :category
  # enum condition : {sweet: 0, salty: 1, spicy: 2}
end
