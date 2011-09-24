require 'helper'
require 'closest_fibonacci'

class TestClosestFibonacci < Test::Unit::TestCase

  should "provide the .closest_fibonacci method to a Fixnum instance" do
    assert_respond_to(42, "closest_fibonacci")
  end

  should "provide the .closest_fibonacci method to a Bignum instance" do
    assert_respond_to(42424242424242424242424242424242, "closest_fibonacci")
  end

  should "throw an exception when the number is negative" do
    assert_raise(RangeError) { -1.closest_fibonacci }
  end
end
