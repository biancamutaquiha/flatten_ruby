def flatten(array)
  return 'input must be array' unless array.instance_of?(Array)

  new_array = array.reduce([]) do |accumulator, item|
    if item.instance_of?(Array)
      accumulator = accumulator.concat(flatten(item)) 
    else
      accumulator << item
    end 
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

def not_array_input?
  assert_equal('input must be array', flatten(1))
end

def nested_array?
  assert_equal([1, 2, 3, 4], flatten([ 1, [ 2, [ 3 ] ], 4 ]))
end

empty_array?
flatten_array?
not_array_input?
nested_array?
