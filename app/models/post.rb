class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, :dependent => :destroy
	validates :title, presence: true, uniqueness: true
	validates :subtitle, presence: true, uniqueness: true, length: { maximum: 200 }
	validates :body, presence: true, uniqueness: true 
end


