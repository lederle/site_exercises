require 'minitest/autorun'
require_relative '4_easy1'

class HowManyTest < Minitest::Test
  def test_one_thing
    arr = ['thing']
    expected = <<~OUT
      thing => 1
    OUT
    assert_output(expected) { how_many(arr) }
  end

  def test_no_thing
    arr = []
    expected = ''
    assert_output(expected) { how_many(arr) }
  end

  def test_model_test_case
    arr = [
      'car', 'car', 'truck', 'car', 'SUV', 'truck',
      'motorcycle', 'motorcycle', 'car', 'truck'
    ]
    expected = <<~OUT
      car => 4
      truck => 3
      SUV => 1
      motorcycle => 2
    OUT
    assert_output(expected) { how_many(arr) }
  end

  def test_one_thing_one_liner
    arr = ['thing']
    expected = <<~OUT
      thing => 1
    OUT
    assert_output(expected) { how_many_one_liner(arr) }
  end

  def test_no_thing_one_liner
    arr = []
    expected = ''
    assert_output(expected) { how_many_one_liner(arr) }
  end

  def test_model_test_case_one_liner
    arr = [
      'car', 'car', 'truck', 'car', 'SUV', 'truck',
      'motorcycle', 'motorcycle', 'car', 'truck'
    ]
    expected = <<~OUT
      car => 4
      truck => 3
      SUV => 1
      motorcycle => 2
    OUT
    assert_output(expected) { how_many_one_liner(arr) }
  end

  def test_one_thing_tally
    arr = ['thing']
    expected = <<~OUT
      thing => 1
    OUT
    assert_output(expected) { how_many_tally(arr) }
  end

  def test_no_thing_tally
    arr = []
    expected = ''
    assert_output(expected) { how_many_tally(arr) }
  end

  def test_model_test_case_tally
    arr = [
      'car', 'car', 'truck', 'car', 'SUV', 'truck',
      'motorcycle', 'motorcycle', 'car', 'truck'
    ]
    expected = <<~OUT
      car => 4
      truck => 3
      SUV => 1
      motorcycle => 2
    OUT
    assert_output(expected) { how_many_tally(arr) }
  end

  def test_two_things_case_insensitive
    arr = %w[car CaR]
    expected = <<~OUT
      car => 2
    OUT
    assert_output(expected) { how_many_insensitive(arr) }
  end
end
