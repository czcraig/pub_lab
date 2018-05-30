require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drinks.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Tennants", 4.50)
    @drink2 = Drink.new("Strongbow", 4.25)
    @drink3 = Drink.new("Buckfast", 6.50)

    @pub = Pub.new("The Standing Order", 500, [@drink1, @drink2, @drink3])
  end

  def test_pub_name
    assert_equal("The Standing Order", @pub.pub_name)
  end

  def test_get_pubs_till_balance
    assert_equal(500, @pub.till_balance)
  end

  def test_drinks_menu
    assert_equal([@drink1, @drink2, @drink3], @pub.drinks_menu)
  end









end
