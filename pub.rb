class Pub

  attr_reader(:pub_name, :till_balance, :drinks_menu)

  def initialize(pub_name, till_balance, drinks_menu)
    @pub_name = pub_name
    @till_balance = till_balance
    @drinks_menu = drinks_menu
  end



end
