def how_many(arr)
  ret = {}
  arr.uniq.each do |el|
    ret[el] = arr.count(el)
  end
  ret.each do |key, val|
    puts "#{key} => #{val}"
  end
end

# It seems that since 1.9 hashes respect insertion order.
# Can keep a list with the insertion order along with
# hash to be sure.


# There are a bunch of other ways to do this, such as:
# list.group_by { |v| v.something }.map { |k, vs| [k, vs.size] }.to_h
# list.group_by { |v| v.something }.to_h { |k, vs| [k, vs.size] }
# list.each_with_object(Hash.new(0)) { |v, h| h[v.something] += 1 }
#
# The group_by is nice because instead of grouping by the raw
# value, you can group by the downcase for case insensitive
# groupings, for example

def how_many_one_liner(arr)
  arr.group_by { |v| v }.transform_values(&:size).each do |k, v|
    puts "#{k} => #{v}"
  end
end

def how_many_tally(arr)
  arr.tally.each do |k, v|
    puts "#{k} => #{v}"
  end
end

def how_many_insensitive(arr)
  arr.map(&:downcase).tally.each do |k, v|
    puts "#{k} => #{v}"
  end
end
