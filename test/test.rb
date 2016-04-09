require "minitest/autorun"
require File.expand_path('../lib/yeah_i_did', File.dirname(__FILE__))

class Aa
  def foo(a=3, b=4)
    a+b
  end
end

class TestMethodMissing < Minitest::Test
  def test_no_args
    result = DidYouMean.yeah_i_did { Aa.new.fo }
    assert_equal 7, result
  end

  def test_one_arg
    result = DidYouMean.yeah_i_did { Aa.new.fo(1) }
    assert_equal 5, result
  end

  def test_two_args
    result = DidYouMean.yeah_i_did { Aa.new.fo(1, 2) }
    assert_equal 3, result
  end
end

