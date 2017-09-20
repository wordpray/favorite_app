class List < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :genre
  has_many :links, dependent: :destroy
  validates :title, presence: true, uniqueness: { scope: [:category_id] }
end
