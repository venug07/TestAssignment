class Repeatpattern

 # Run In Terminal
 #--------------#
 
 # Run with correct File path
 # Eg:

 # ruby ./Desktop/repeatpattern.rb  abcjgsdhmhkmhkmoklshlshlsh

 # Output: mhk

	def self.get_repeat_pattern(arry)
       inparry = arry.split('')
       otharry = []
       outarry = nil
       0..(inparry.size - 1).times do |n|
          ar = inparry[n] + inparry[n+1] + inparry[n+2] if !inparry[n+1].nil? && !inparry[n+2].nil?
          cr = inparry[n+3] + inparry[n+4] + inparry[n+5] if !inparry[n+3].nil? && !inparry[n+4].nil? && !inparry[n+5].nil?
          otharry << ar if ar == cr
       end
      if !otharry.first.nil?
       return otharry.first
     else
       return "No pattern repeating"
     end
	 end

end

puts Repeatpattern.get_repeat_pattern(ARGV[0])