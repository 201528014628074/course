# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  	arr_sum = 0
  	arr.each do |i|
  		arr_sum += i
  	end
  	return arr_sum	
end

def max_2_sum arr
  # YOUR CODE HERE
  	arr_max2sum = 0
  	sort_arr = arr.sort
  	if  sort_arr[-1] != nil
  		arr_max2sum += sort_arr[-1]
  		if  sort_arr[-2] != nil
  			arr_max2sum += sort_arr[-2]
  		end
  	end
  	return arr_max2sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  	arr_length = arr.length
  	if arr_length==0
  		if n==0
  			return true
  		else
  			return false
  		end
  	end
  	if arr_length==1
  		if n==arr[0]
			return true
		else
			return false
		end  		
  	end
  	first=0
  	begin
  		second=first+1
  		begin
  			if arr[first] + arr[second] == n
  				return true
  			end
  			second += 1
  		end until second > arr_length-1
  		first += 1
  	 end until first > arr_length-2
  	 return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  	a = "Hello, "
  	return a << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  	no_consonant = "aeiou"
  	if s[0] != nil
  		start_down = s[0].downcase
  	        start_up = s[0].upcase
  		if start_down != start_up
  			if  !(no_consonant.include? start_down)
  				return true
  			end
  		end
  	end
  	return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
        if s[0]==nil
                return false
        end
        s.each_char do|character|
                if character.to_i.to_s != character   or  character.to_i > 1
                        return false
                end
        end
        if (s.to_i(2) % 4) == 0
                return true
        else
                return false
        end
end

# Part 3

class BookInStock
# YOUR CODE HERE
        def initialize (isbn, price)
                if isbn.empty? or price < 0
                        raise ArgumentError, 'the argument is not propert'
                end
                @isbn = isbn
                @price = price
        end
        def price_as_string
                price_string = @price.to_s
                price_string.insert(0, '$')
                dot_index = price_string.index('.')
                if dot_index == nil
                        price_string << ".00"
                        return price_string
                end
                if price_string[-2] == '.'
                        price_string << "0"
                        return price_string
                end
                price_string = price_string[0..(dot_index + 2)]
                return price_string
        end
end

#arr = [1,2,3]
#puts "The sum is #{sum arr}"
#puts "The max 2 sum is #{max_2_sum arr}"
#puts "The sum_to_n? is #{sum_to_n? arr, 1}"
#puts "The hello(name) is #{hello("wangcan")}"
#puts "The starts_with_consonant is #{starts_with_consonant? "01110"}"
#puts "The binary_multiple_of_4 is #{binary_multiple_of_4? "01100"}"
#book1 = BookInStock.new("0915", 20)
#puts "#{book1.price_as_string}"