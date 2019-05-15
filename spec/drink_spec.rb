require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < Minitest::Test

def setup
  @drink = Drink.new("Beer", 3, 5)
end

  def test_name
    assert_equal("Beer",@drink.drink_name)
  end

  def test_price
    assert_equal(3,@drink.price)
  end

end
