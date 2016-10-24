module Luhn
    def self.is_valid?(number)

        #step 1: Break the number into its digit. #chars return array of character in string
        nums = number.to_s.reverse.chars.map{|s| s.to_i}

        #add new variable for step 2 part b
            nums.each_with_index do |n, i|

            #step 2 part_a : start from the right and loop through the digit
             #step 2 part_b: double every second digit
            #build a new array where the second digit is consistently double
             nums[i] = ((i%2 == 0) ? n : n*2)
            end

        #step 3: if the double value is greater than or = 10 take the value and subtract 9  
        #step 4: sum the digit
         sum =  nums.map{ |n| (n >= 10) ? n - 9 : n}.inject { |sum, n| sum + n }
        #step 5: if the sum is divisible by 10 it's valid
        p sum%10 == 0
    end
end     

          Luhn.is_valid?(4194560385008504)
          Luhn.is_valid?(4194560385008505)
          Luhn.is_valid?(377681478627336)
          Luhn.is_valid?(377681478627337)

    puts "--------------------------------"
           
           #should return all false

          Luhn.is_valid?(4531015112830366)
          Luhn.is_valid?(6011514438546201)
          Luhn.is_valid?(1771549495586802)
          


