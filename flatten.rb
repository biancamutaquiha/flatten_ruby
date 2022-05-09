def flatten(array)
  new_array = []
  array.each do |item|
    new_array << item
  end
  new_array
end

def assert_equal(expected, actual)
  if expected != actual
    puts "Expected: #{expected.inspect}, got: #{actual.inspect}"
    exit 1
  end
end

def empty_array?
  assert_equal([], flatten([]))
end

def flatten_array?
    assert_equal([1,2,3], flatten([1,2,3]))
end

empty_array?
flatten_array?