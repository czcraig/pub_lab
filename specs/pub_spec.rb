require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drinks.rb")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Standing Order", 500, ["Tennants", "Strongbow", "Buckfast"])
  end

  def test_pub_name
    assert_equal("The Standing Order", @pub.pub_name)
  end

  def test_drinks_menu
    assert_equal(["Tennants", "Strongbow", "Buckfast"], @pub.drinks_menu)
  end











end
