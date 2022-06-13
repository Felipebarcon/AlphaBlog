# Always require test_helper
require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    # setup instance variable to be available for each test
    @category = Category.new(name: "Sports")
  end

  test "category sould be valid" do
    assert @category.valid?
  end

  test "name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "name should be unique" do
    @category.save
    @category2 = Category.new(name: "Sports")
    assert_not @category2.valid?
  end

  test "name sould not be too long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end

  test "name sould not be too short" do
    @category.name = "aa"
    assert_not @category.valid?
  end

end
