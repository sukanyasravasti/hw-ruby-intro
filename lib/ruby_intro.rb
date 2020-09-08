# # When done, submit this entire file to the autograder.

# # Part 1
#input = array of integer
#output = sum of these integers
def sum(arr)
  # YOUR CODE HERE
  if arr.length>0
    return arr.sum
  else return 0
  end
end

#print sum([1,2])


def max_2_sum(arr)
	if arr.length > 1
		max1 =arr.sort[-1]
		max2 = arr.sort[-2]
		return max1 + max2 
	end	
	if arr.length == 1
		return arr.pop()
	end	
	if arr.length == 0
		return 0
	end
end



def sum_to_n?(arr,n)
  a= arr.combination(2).to_a
 # print a
  indi=0
  for i in a
  #    print i.sum 
      if i.sum == n
          indi = indi+1
  #        print indi
      end    
  end 
  if indi>0
      return true 
  else return false 
  end
end

#print sum_to_n?([1,1,2,3,1],5)


# # Part 2

def hello(name)
  #print "Hello #{name}"
  return "Hello, #{name}"
end

#print hello("Dan")

def starts_with_consonant?(s)
#i at the end to make regular expression case insensitive.
#\W anything that’s not in [0-9a-zA-Z_]
#[^aeiou] means a range of character except a e i o u [^ inside is negated range]
#s[0] gives first character
#numbers behave like r,s etc (consonant), # is example of non-word character
  if /[^aeiou\W]/i.match(s[0]) == nil
    return false
  else
    return true
  end  
end

print (starts_with_consonant?("9hea"))

def binary_multiple_of_4?(s)
  if (s) == "0"
    return true
  end
  #binary mutliples of 4 will look like 010101010000 (i.e. end with at least two zeros)
  # ^ denotes begining, * denotes [01](i.e. last string) repeats and (00)$ means string ends with (00)
  if /^[01]*(00)$/.match(s) 
    return true
  else return false
  end
end


# # Part 3
class BookInStock
  #what properties the instances of this class will have
  attr_accessor :isbn, :price

  #constructor
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end

