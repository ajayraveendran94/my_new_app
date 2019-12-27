class Post < ApplicationRecord
	validates :name, presence: true, length: {minimum:5}
	validates :mobile, presence: true, length: {minimum:10}
	validates :post, presence: true, length: {minimum:10}
end
