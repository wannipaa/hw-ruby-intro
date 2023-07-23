# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  res = 0
  arr.each { |x| res += x }
  return res
end

def max_2_sum(arr)
  num = arr.max(2)
  return num.sum
end

def sum_to_n?(arr, n)
  if (arr.empty?) || (arr.length == 1)
    return false
  elsif arr.combination(2).any? {|a, b| a + b == n }
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  if s.empty? || !s[0].match?(/[a-zA-Z]/)
    return false
  end
  s[0].match?(/^[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4?(s)
  if s.empty? || s.match?(/[a-zA-Z\W3-9*]/)
    return false
  elsif s == "0"
    return true
  elsif s.to_i % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
      raise ArgumentError, 'Sorry, something went wrong!' if isbn.empty? || price <= 0
      @isbn = isbn
      @price = price
  end

  def price_as_string
      format('$%.2f', price)
  end
  
end
