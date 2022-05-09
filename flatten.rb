def flatten(array)
  new_array = []
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

empty_array?