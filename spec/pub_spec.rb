require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class TestPub < Minitest::Test

  def setup

    @drink1 = Drink.new("Beer", 3, 5)
    @drink4 = Drink.new("Beer", 3, 5)
    @drink2 = Drink.new("Beer", 3, 5)
    @drink3 = Drink.new("Beer", 3, 5)
    @drinks = [@drink1, @drink2, @drink3, @drink4]
    @pub = Pub.new("Stewarts", 500, @drinks)
    @customer = Customer.new("Neil", 50, 19, 0)
    @customer_1 = Customer.new("Stewart", 20, 16, 0)
    @customer_2 = Customer.new("Stevie", 20, 16, 20)
  end

  def test_pub_name
    assert_equal("Stewarts", @pub.pub_name)
  end

  def test_till_amount
    assert_equal(500, @pub.till_amount)
  end

  def test_number_of_drinks
    assert_equal(4,@pub.number_of_drinks())
  end

  def test_sell_drink_to_customer
    @pub.remove_drink_from_bar(@customer.age,@customer.drunkenness)
    assert_equal(3, @drinks.length)

    @pub.add_money_to_bar(3,@customer.age,@customer.drunkenness)
    assert_equal(503, @pub.till_amount)

    @customer.reduce_money_in_wallet(3,@customer.age,@customer.drunkenness)
    assert_equal(47,@customer.wallet)

    @customer.increase_drunkeness(@drink1.alcohol_level)
    assert_equal(5,@customer.drunkenness)

  end

  def test_refused_a_drink
    @pub.remove_drink_from_bar(@customer_1.age,@customer.drunkenness)
    assert_equal(4, @drinks.length)

    @pub.add_money_to_bar(3, @customer_1.age, @customer.drunkenness)
    assert_equal(500, @pub.till_amount)

    @customer.reduce_money_in_wallet(3,@customer_1.age,@customer.drunkenness)
    assert_equal(20,@customer_1.wallet)
  end

end
