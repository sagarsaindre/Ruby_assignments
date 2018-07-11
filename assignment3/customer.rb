require_relative "productoperation"
require_relative "product"
class Customer
  def accept
  puts"1. List product
       2. Search product by name
       3. Buy product by id"
  puts "Enter your Choice"
  n=gets

  case n
  when "1\n"
    productop=ProductOperation.new
    productop.list_booking

  when "2\n"
    puts "Enter product name to search"
    prod_name=gets.chomp

    productop=ProductOperation.new
    productop.search_product(prod_name)
  when "3\n"

    file = File.open("product.txt", "a")
    my_hash = File.foreach("product.txt") { |f| print f }
    puts my_hash

    book=Hash.new
    puts "Enter the product id"
    id=gets.chomp
    puts "Enter the product name"
    prod_name=gets.chomp
    puts "Enter Card number"
    card_no=gets.chomp
    puts "Enter CVV"
    cvv=gets.chomp

    book['id']="#{id}"
    book['prod_name']="#{prod_name}"
    book['card_no']="#{card_no}"
    book['cvv']="#{cvv}"

    productop=ProductOperation.new
    productop.add_booking(book)

   end
  end
end





