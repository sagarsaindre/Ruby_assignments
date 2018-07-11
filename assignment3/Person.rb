require_relative "assignment_3"

class Person
  def accept
    puts "select
          1.Shopkeeper
          2.Customer"
    puts "Are you Customer or Shopkeeper"
    n=gets

  end
end


person=Person.new
person.accept