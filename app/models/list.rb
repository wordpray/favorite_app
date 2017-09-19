class List < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :links, dependent: :destroy
  validates :title, presence: true
end
