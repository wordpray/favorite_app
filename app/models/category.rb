class Category < ApplicationRecord
  belongs_to :user
  has_many :lists, dependent: :destroy
  validates :title, presence: true, uniqueness: { scope: [:user_id] }
end
