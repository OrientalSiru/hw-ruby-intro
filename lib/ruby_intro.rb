# When done, submit this entire file to the autograder.
# Siru Li homework 1
# Part 1

def sum arr
  arraySum = 0
  arr.each{|i|arraySum+=i}
  return arraySum
end

def max_2_sum arr
  if arr.size == 0
	  return 0
  elsif arr.size == 1
	  return arr[0]
  else
    sum = 0
    arr.sort!
    arr.reverse!
    sum = arr[0] + arr[1]
    return sum
  end
end

def sum_to_n? arr, n
  for i in 0..arr.size - 1
	  for j in (i+1)..arr.size - 1
	    sum = arr[i] + arr[j]
	    if sum == n
		    return true
	    end
	  end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length <= 0
	  return false
  else
	  if s[0].ord < 65 or s[0].ord >122 #string.ord gets the ascii value of a string
	    return false
   	else
	    vows = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
	  return !(vows.include? (s[0]))
	  end
  end
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  
  sum = 0
  for i in 0..s.length - 1
	  if s[i].ord < 48 || s[i].ord > 49 
	    return false
  	else
	    sum += (s[i].to_i) * (2 ** (s.length - i))
    end
  end
 
  if sum % 4 == 0
	  return true
  else
	  return false
  end

end

# Part 3

class BookInStock
  #ruby constructor
  def initialize(isbn, price)
	if(isbn.length < 1)
	  raise ArgumentError.new("ISBN Cannot be an empty string!")
	end
	if(price <= 0.0)
	  raise ArgumentError.new("Price needs to be more than 0.0!")
	end
	@isbn = isbn
	@price = price
  end
  
  #getter and setter
  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def price_as_string
    return sprintf("$%.2f", price)
  end
  
end
