require("minitest/autorun")
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test


  def setup
    @drink1 = Drink.new("Tennants", 4.50)
    @drink2 = Drink.new("Strongbow", 4.25)
    @drink3 = Drink.new("Buckfast", 6.50)
  end

  def test_get_drink_name
    assert_equal("Tennants", @drink1.name())
  end

  def test_get_drink_price
    assert_equal(6.50, @drink3.price())
  end









end
