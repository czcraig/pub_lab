class Pub

  attr_reader(:pub_name, :till_balance, :drinks_menu)

  def initialize(pub_name, till_balance, drinks_menu)
    @pub_name = pub_name
    @till_balance = till_balance
    @drinks_menu = drinks_menu
  end

  def increase_till(amount)
    @till_balance += amount
  end







end
