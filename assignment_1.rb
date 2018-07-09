string_1 = "i am learning Ruby language."
string_2 = "why? Coz it's cool and I like it."
puts "1. Make string_1 capital case :  ",string_1.split.map(&:capitalize).join(" ")
puts " "
puts "2. Make string_1 lower case:  ",string_1.downcase
puts " "
puts "3. Change the string_1's each letter's case to the opposite case.:  ",string_1.swapcase
puts " "
puts "4. Print string_1's characters count:  ", string_1.length
puts " "
puts "5. Check if string_1 contains the word ruby:  ", if string_1.include?("ruby") then print "word present" else printf "not present" end
puts " "
puts "6. Split string_2 by  ? :  ", string_2.split("?")
puts " "
puts "7. Concat string_1 and string_2:  ", string_3=string_1+ string_2
puts " "
puts "8. Concatenated string, change from I to We and make the capital case.",string_3.gsub('I','we')
puts " "
puts " 9. Convert string_1 to the symbol",string_1.to_sym
puts " "
puts "10. List methods available on strings",String.methods
puts " "
puts " 11. Print strings' length difference",string_2.length-string_1.length
puts " "
puts "12 Convert `nil` to an array: ",nil.to_a
puts " "
puts "12 Convert `nil` to an string: ",nil.to_s
puts " "
puts "12 Convert `nil` to an float: ",nil.to_f
puts " "
puts "13. Write a method which tells if the number is even or odd?"
puts "Method Declaration "
def check(num)
if(num%2==0)
  print "Number is Even"

else
  print "Number is Odd"

end
end
puts "#{check(20)}"
