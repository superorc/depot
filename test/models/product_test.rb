require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	fixtures :products
	
	test "prod attr must not be empty" do
		product = Product.new
		assert product.invalid?
		assert product.errors[:title].any?
		assert product.errors[:description].any?
		assert product.errors[:price].any?
	end

	test "prod price must be >= 0" do
		product = Product.new(title: "my test title",
													description: "some description of book")
		product.price = -1
		assert product.invalid?
		assert_equal ["цена дожна быть больше либо равна 0.01"],
			product.errors[:price]

		product.price = 0
		assert pruduct.invalid?
		assert_equal ["цена дожна быть больше либо равна 0.01"],
			product.errors[:price]

		product.price = 1
		assert product.valid?
	end

	test "prod is not valid without qnique title" do
		product = Product.new(title: products(:ruby).title,
													description: products(:ruby).description,
													price: products(:ruby).price)

		assert product.invalid?

		assert_equal [I18n.translate('activerecord.errors.messages.taken')], product.errors[:title]
	end

end
