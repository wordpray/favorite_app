class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :categories, dependent: :destroy
  has_many :lists, dependent: :destroy
  has_many :links, dependent: :destroy
end
