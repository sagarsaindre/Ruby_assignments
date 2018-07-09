puts "1. Write a method which takes 3 arguments number1, number2, block and return the output
Create 4 blocks which can be passed as 3rd arguments: operations can be added, subtract, multiply, divide

"

def arithmatic
  yield(20,4)
end

arithmatic { |number1,number2|
puts "Addition: ",number1+number2
}


arithmatic { |number1,number2|
puts "Subtraction: ",number1-number2
}

arithmatic { |number1,number2|
puts "Multiplication: ",number1*number2
}

arithmatic { |number1,number2|
puts "Division: ",number1/number2
}




puts"
2. write a method: compose which takes two procs and returns a new proc which, when called, calls the first proc and passes its result into the second proc. both of the proc arguments takes a number argument

"
puts "Enter the number"
num=gets

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

square = Proc.new do |x|
  x * x
end

double = Proc.new do |x|
  x + x
end

doubleThenSquare = compose double, square

puts doubleThenSquare.call(num.to_i)




puts"3. Write a lambda which takes first_name and last_name and returns full_name.
"
puts "Enter the First name"
fname=gets
puts "Enter the Last name"
lname=gets

  l=lambda{|fname,lname| puts"#{fname}#{lname}"}

l.call(fname,lname)