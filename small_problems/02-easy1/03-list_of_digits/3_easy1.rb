def digit_list(int)
  raise ArgumentError unless int.is_a? Integer

  raise PositiveIntegerError unless int.positive?

  int.to_s.split(//).map(&:to_i)
end

class PositiveIntegerError < StandardError
end

def digit_list_by_factors(int)
  ret = []
  loop do
    int, digit = int.divmod(10)
    ret.unshift digit
    break if int.zero?
  end
  ret
end
