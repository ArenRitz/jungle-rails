require "rails_helper"

RSpec.describe Product, type: :model do
  describe "Validations" do
    it "is valid" do
      @product = Product.new
      @category = Category.new
      @category.name = "Test"
      @product.name = "Test"
      @product.price_cents = 12311
      @product.quantity = 3
      @product.category = @category
      expect(@product.valid?).to be true
    end

    it "should have the name" do
      @product = Product.new
      @product.name = nil
      @product.valid?
      expect(@product.errors[:name]).to include("can't be blank")

      @product.name = "test"
      @product.valid?
      expect(@product.errors[:name]).not_to include("can't be blank")
    end

    it "should have the price" do
      @product = Product.new
      @product.price_cents = nil
      @product.valid?
      expect(@product.errors[:price_cents]).to include("is not a number")

      @product.price_cents = 12311
      @product.valid?
      expect(@product.errors[:price_cents]).not_to include("can't be blank")
    end

    it "should have the quantity" do
      @product = Product.new
      @product.quantity = nil
      @product.valid?
      expect(@product.errors[:quantity]).to include("can't be blank")

      @product.quantity = 3
      @product.valid?
      expect(@product.errors[:quantity]).not_to include("can't be blank")
    end

    it "should have a category_id" do
      @category = Category.new
      @product = Product.new
      @product.category = nil
      @product.valid?
      expect(@product.errors[:category]).to include("can't be blank")

      @product.category = @category
      @product.valid?
      expect(@product.errors[:category]).not_to include("can't be blank")
    end
  end
end
