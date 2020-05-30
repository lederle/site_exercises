def is_odd?(int)
  raise ArgumentError, 'Argument not integer' unless int.is_a? Integer

  !(int % 2).zero?
end
