array_1 = [2, 4, 6, 8, 10]
array_2 = [1, 5, 6, 8, 11, 12]

hash_1 = {a: 'a', b: 'b', c: 'c', d: 'd', e: 'e'}
hash_2 = {x: '10', y: '20', z: '30'}

puts "1. Print  Hello World  10 times"
10.times do
  puts"Hello World"
end
puts "2. Print number from 30 to 40"
30.upto(40){|s| puts s}
puts "3. Comabine array_1 & array_2 and make elements it uniq"
puts array_3=array_1|array_2
puts "4. Combine array_1 & array_2 and keep only even elements"
array_3.each { |x| puts x if x.even? }
puts "5. Combine array_1 & array_2 and delete elements if greater than 8"
array_3.each { |x| puts x if x<8 }
puts "6. array_1 make cubes of all elements and add them "
sum=0
array_1.map do|n|
 sum=sum+(n*n*n)
end
puts sum
puts "7. Combine array_1 & array_2 and find index of '8'"
puts array_3.find_index("8")
puts "8. array_1: add 5 to each element "
array_1.map do |n|
  puts n+5
end
puts "9. combine hash_1 & hash_2"
puts hash_1.merge(hash_2)
puts "10. replace values of hash_1 with elements from array_1"
puts ""
puts "11. Make sum of integer values of hash_2"
sum=0;
hash_2.each{|key,value| "#{sum+=value.to_i}"}
puts sum
puts "12. Make upcase of all values of hash_1"
puts hash_1.each { |k, v| hash_1[k] = v.upcase }



