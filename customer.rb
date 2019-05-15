class Customer

  attr_accessor :customer_name, :wallet, :age, :drunkenness
    def initialize(customer_name, wallet, age, drunkenness)
      @customer_name = customer_name
      @wallet = wallet
      @age = age
      @drunkenness = drunkenness
    end

    def reduce_money_in_wallet(amount, cust_age,how_drunk)
        if cust_age >= 18 && how_drunk < 16
          @wallet -= amount
        end
    end

    def increase_drunkeness(drink_strength)
      @drunkenness += drink_strength
    end


  end
