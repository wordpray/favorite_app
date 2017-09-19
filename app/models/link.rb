class Link < ApplicationRecord
  belongs_to :user
  belongs_to :list
  validates :title, presence: true
  validates :url, presence: true, uniqueness: { scope: [:list_id] }
end
