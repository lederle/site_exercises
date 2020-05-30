require 'minitest/autorun'
require_relative '2_easy1'

class IsOddTest < Minitest::Test
  def test_it
    assert is_odd?(1)
    assert is_odd?(3)
    refute is_odd?(4)
    refute is_odd?(6)

    refute is_odd?(2)
    assert is_odd?(5)
    assert is_odd?(-17)
    refute is_odd?(-8)
    refute is_odd?(0)
    assert is_odd?(7)
  end

  def test_throws_if_not_integer
    assert_raises ArgumentError do
      is_odd?('a')
    end

    assert_raises ArgumentError do
      is_odd?('1.0')
    end

    assert_raises ArgumentError do
      is_odd?([1, 2])
    end
  end
end
