class Maxproduct

 # Run In Terminal
 #--------------#
 
 # Run with correct File path
 # Eg:

 # ruby ./Desktop/maxproduct.rb 1,2,3,7,8,10,12,-14,18,-20

 # Output: ["-20","-14","18"]

	def self.get_maxproduct_numbers(arry)
       if arry.kind_of?(Array)
       	inparry = arry
       else
        inparry = arry.split(',') 
       end
       prdctval = 0
       outarry = []
       0..(inparry.size - 1).times do |n|
         inparry.each_with_index do |val,indx|
         	0..(inparry.size - 1).times do |np|
         	 prdval = val.to_i * inparry[n].to_i * inparry[np].to_i 
             if (prdctval == 0) || (n != indx && n != np && indx != np && prdctval < prdval) 
               prdctval = prdval
               outarry = [val,inparry[n],inparry[np]]
             end
            end
         end
       end
       return outarry
	end


end

puts Maxproduct.get_maxproduct_numbers(ARGV[0])