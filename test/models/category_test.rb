# Always require test_helper
require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "category sould be valid" do
    @category = Category.new(name: "Sports")
    assert @category.valid?
  end


end
