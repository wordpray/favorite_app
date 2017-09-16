class Category < ApplicationRecord
  has_many :lists
  has_many :users, through: :category_users
  has_many :category_users
end
