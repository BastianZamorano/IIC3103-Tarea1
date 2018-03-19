class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presence: true
  validates :nombre, presence: true
end
