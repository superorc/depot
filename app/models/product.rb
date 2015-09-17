class Product < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :title, length: { minimum: 5 }

	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

	def self.latest
		Product.order(:updated_at).last
	end

	private

	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'существует товарная позиция')
			return false
		end
	end

end
