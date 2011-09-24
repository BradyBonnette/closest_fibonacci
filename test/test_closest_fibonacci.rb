require 'helper'
require 'closest_fibonacci'

class TestClosestFibonacci < Test::Unit::TestCase

  # Create a map that contains the first 10 test numbers (as keys) mapped to their 
  # respective expected results (as values). More can be added here when necessary

  @test_data = {0=>0, 1=>1, 2=>2, 3=>3, 4=>3, 5=>5, 6=>5, 7=>5, 8=>8, 9=>8}

  should "provide the .closest_fibonacci method to a Fixnum instance" do
    assert_respond_to(42, "closest_fibonacci")
  end

  should "provide the .closest_fibonacci method to a Bignum instance" do
    assert_respond_to(42424242424242424242424242424242, "closest_fibonacci")
  end

  should "throw an exception when the number is negative" do
    assert_raise(RangeError) { -1.closest_fibonacci }
  end

  # Execute the two example tests that were provided
  should "return 144 when integer is 156" do
    assert_equal(144, 156.closest_fibonacci)
  end

  should "return 89 when integer is 99" do
    assert_equal(89, 99.closest_fibonacci)
  end

  # Loop through our test data and execute "should" methods
  # on the fly. Adding or removing to the test data will only add/remove
  # to the number of tests performed. This is desired so that if any
  # one test fails, we will know which one and why.

  @test_data.each do |test_value, expected_result|
    TestClosestFibonacci.send(:should, "return #{expected_result} when integer is #{test_value}"){
      assert_equal(expected_result, test_value.closest_fibonacci)
    }
  end

end
