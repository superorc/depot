class Product < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates_length_of :title, :minimum => 10
end
