require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class TestCustomer < Minitest::Test

  def setup
    @customer = Customer.new("Neil",50)
    @customer_1 = Customer.new("Neil",16)
  end

  def test_customer_name
    assert_equal("Neil",@customer.customer_name)
  end

  def test_wallet
    assert_equal(50,@customer.wallet)
  end

  def test_reduce_money_in_wallet
    @customer.reduce_money_in_wallet(3,@customer.age)
    assert_equal(47,@customer.wallet)
  end
end
