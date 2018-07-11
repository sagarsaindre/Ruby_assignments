require_relative "assignment_3"
require_relative "customer"


class Person
  def accept
    puts "select
          1.Shopkeeper
          2.Customer"
    puts "Are you Customer or Shopkeeper"
    n=gets
  case n
  when "1\n"
    shopkeeper=Shopkeeper.new
    shopkeeper.accept
  when "2\n"
    customer=Customer.new
    customer.accept
  end
end
end


person=Person.new
person.accept