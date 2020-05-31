require 'minitest/autorun'
require_relative '3_easy1'

class DigitListTest < Minitest::Test
  def test_it
    assert_equal [1, 2, 3, 4, 5], digit_list(12345)
    assert_equal [7], digit_list(7)
    assert_equal [3, 7, 5, 2, 9, 0], digit_list(375290)
    assert_equal [4, 4, 4], digit_list(444)
  end

  def test_model_answer
    assert_equal [3, 4, 5], digit_list_by_factors(345)
  end

  def test_throw_if_not_integer
    assert_raises ArgumentError do
      digit_list('ascd')
    end

    assert_raises ArgumentError do
      digit_list([1, 2, 3])
    end
  end

  def test_throw_if_not_positive
    assert_raises PositiveIntegerError do
      digit_list(-12345)
    end
  end
end
