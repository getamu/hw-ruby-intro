# When done, submit this entire file to the autograder.

# Part 1

def sum arr 
  sum=0
    arr.each do|i|
      sum+=i
    end
  return sum;
end

def max_2_sum arr
  if arr.empty? 
    return 0
  end
  if arr.length==1 
    result=arr[0]
  else
    arr.sort!{|x,y| y<=>x}
    result=arr[0]+arr[1]
  end
  return result
end

def sum_to_n? arr, n
  if arr.empty? or arr.length==1 
    return false
  end
  hash=Hash.new
  arr.each{|val| 
            if hash.key? val 
              return true
            else
              hash[n-val]=n
            end
  }
  return false
    
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  if /^[01]*(00)$/.match(s) #|| /^0$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn,:price
  def initialize(num,val)
    if num.empty? or val<=0
      raise ArgumentError
    end
    @isbn=num
    @price=val
  end
  def price_as_string
    val= "$%.2f" % @price
    return val
  end
end
