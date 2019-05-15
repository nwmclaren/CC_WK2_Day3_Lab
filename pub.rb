class Pub
  attr_reader :pub_name
  attr_accessor :till_amount, :drinks

  def initialize(pub_name,till_amount,drinks)
    @pub_name = pub_name
    @till_amount = till_amount
    @drinks = drinks
  end

  def number_of_drinks
    return @drinks.length()
  end

  def money_left

  end

  # def remove_drink_from_bar()
  #   removed_drink = @drinks.pop
  #   return removed_drink
  # end

  def remove_drink_from_bar(cust_age, how_drunk)
      if cust_age >= 18 && how_drunk < 15
        @drinks.pop if cust_age >=18
      end
  end

  def add_money_to_bar(amount,cust_age, how_drunk)
      if cust_age >= 18 && how_drunk <15
      @till_amount += amount
    end
  end

  # def reduce_money_in_wallet
  #   @customer.wallet -= 3
  # end

end
