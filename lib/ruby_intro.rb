#HW1 Completed by: Travis Stewart

#================================================================
# Part 1
#================================================================

def sum arr
  rtn = 0
  arr.each { |n| rtn += n }
  return rtn
end

#----------------------------------------------------------------

def max_2_sum arr
  #Check for an empty array
  if (arr.empty?) 
    return 0
  end
  
  #Check for an array with only 1 element
  if (arr.size == 1) 
    return arr[0]
  end
  
  #Array has at least 2 elements, therefore return the sum of the 2 largest elements 
  _arr = arr.sort.reverse
  return _arr[0] + _arr[1]
end

#----------------------------------------------------------------

def sum_to_n? arr, n
  #Check if there are at least 2 elements
  if(arr.size < 2) 
    return false
  end
  
  arr.each_with_index do |a, i|
    j = i + 1
    while j < arr.size
      if(a+arr[j] == n)
        return true
      end
      j += 1
    end #END_OF_WHILE
  end #END_OF_EACH
  
  return false
end

#===========================================================================
# Part 2
#===========================================================================

def hello(name)
  return "Hello, " + name.to_s
end

#----------------------------------------------------------------

def starts_with_consonant? s
  #Check if it is nil or empty
  if(s.empty?)
    return false
  end
  
  #Check if it starts with a letter
  if(('a'..'z').any?{ |n| n == s[0].downcase })
    #Check if it starts with a vowel
    if(['a', 'e', 'i', 'o', 'u'].any?{ |n| n == s[0].downcase })
      return false
    end
    
    #It's a consonant
    return true
  end
  
  return false
end

#----------------------------------------------------------------

def binary_multiple_of_4? s
  #Check if it is nil or empty
  if(s.empty?)
    return false
  end
  
  #Check if it is a valid binary number
  if(s.chars.any?{|n| n != '0' && n != '1'})
    return false
  end
 
  #Check if the binary number is a multiple of 4
  if(s.to_i(2) % 4 == 0)
    return true
  end
  
  return false
end

#================================================================
# Part 3
#================================================================

class BookInStock
  def initialize(isbn, price)
    if(isbn.empty?)
      raise ArgumentError, "ISBN is empty or nil"
    end
    
    if(price <= 0)
      raise ArgumentError, "Price is less than or equal to 0"
    end
    
    #Initialize instance variables
    @isbn = isbn
    @price = price
    
  end
  
  #--------------------------------
  
  #ISBN getter
  def isbn
    return @isbn
  end
  
  #--------------------------------

  #ISBN setter
  def isbn= i
    @isbn = i
  end
  
  #--------------------------------
  
  #Price getter
  def price
    return @price
  end
  
  #--------------------------------

  #Price setter
  def price= p
    @price = p
  end

  #--------------------------------
  
  #Return the price as a formatted string
  def price_as_string
    return "$%0.2f" % [@price]
  end
  
  #--------------------------------
  #--------------------------------
end
