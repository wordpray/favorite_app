class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :lists, dependent: :destroy
  has_many :links, dependent: :destroy
  has_many :categories, through: :category_users
  has_many :category_users
end
