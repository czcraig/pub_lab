require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drinks.rb")

class CustomerTest < MiniTest::Test


  def setup
    # include drinks info to call upon
    @drink1 = Drink.new("Tennants", 4.50)
    @drink2 = Drink.new("Strongbow", 4.25)
    @drink3 = Drink.new("Buckfast", 6.50)
    # include pub info to call upon
    @pub = Pub.new("The Standing Order", 500, [@drink1, @drink2, @drink3])

    # new customers to call upon
    @customer1 = Customer.new("Chris", 50)
    @customer2 = Customer.new("Ben", 20)
  end


  def test_get_customer_name
    assert_equal("Chris", @customer1.name())
  end

  def test_get_customer_balance
    assert_equal(20, @customer2.wallet_balance)
  end

  def test_deducting_drink_price_from_wallet_balance
    @customer1.buy_drink(@pub, @drink1)
    assert_equal(504.50, @pub.till_balance())
    assert_equal(45.50, @customer1.wallet_balance())
  end


  def test_can_spend_money
    @customer1.spend_money(3.5)
    assert_equal(46.5, @customer1.wallet_balance())
  end


# the CUSTOMER is buying a DRINK from the PUB.

# customer1 = wallet_balance of 50.
# drink1 = price of 4.50

# wallet_balance - drink1 price

# drink1 price + till_balance







end
