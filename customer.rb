class Customer

  attr_reader(:name, :wallet_balance)

  def initialize(name, wallet_balance)
    @name = name
    @wallet_balance = wallet_balance
  end

  def spend_money(amount)
    @wallet_balance -= amount
  end

  def buy_drink(pub, drink)
    price_of_drink = drink.price()
    pub.increase_till(price_of_drink)
    spend_money(price_of_drink)
  end
















end
