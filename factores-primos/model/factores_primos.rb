class FactoresPrimos

  def breakPrimes(number)
    	result = ""
    	originalNumber = number
    
		if(number % 2 == 0)
    		for i in 2..number
    			while number%i==0
    				number = number / i
    				result += i.to_s + " "
    			end	
    		end
  		else
  			result = number.to_s + " "
  		end
    result
	end
end