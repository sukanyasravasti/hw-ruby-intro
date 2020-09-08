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


# # # Part 2

# # def hello(name)
# #   # YOUR CODE HERE
# # end

# # def starts_with_consonant? s
# #   # YOUR CODE HERE
# # end

# # def binary_multiple_of_4? s
# #   # YOUR CODE HERE
# # end

# # # Part 3

# # class BookInStock
# # # YOUR CODE HERE
#end
