require_relative "product"
require_relative "productoperation"
$id=1
class Shopkeeper
  def accept
  puts"1. Add product
       2. Remove the product
       3. List all products with all details and id
       4. Search the product by name
       5. Edit the product "
  puts "Enter your Choice"
  n=gets


  case n
  when "1\n"

    product =Hash.new

    puts "Enter product name"
    prod_name = gets.chomp
    puts "Enter product price"
    prod_price = gets.chomp
    puts "Enter the stock"
    stock_item=gets.chomp
    puts "Enter Company name"
    prod_company=gets.chomp
    puts " Enter store no"
    sr_no=gets.chomp

     product['0']=$id
     product['prod_name']="#{prod_name}"
     product['prod_price']="#{prod_price}"
     product['stock_item']="#{stock_item}"
     product['prod_company']="#{prod_company}"
     product['sr_no']="#{sr_no}"

    productop=ProductOperation.new
    productop.add_product(product)
    $id+=1

  when "2\n"

    file = File.open("product.txt", "a")
    my_hash = File.foreach("product.txt") { |f| print f }
    puts my_hash

    puts "Enter the Product id to remove"
    id=gets
     productop=ProductOperation.new
     productop.remove_product(id)

  when "3\n"
     productop=ProductOperation.new
     productop.list_product

  when "4\n"

    file = File.open("product.txt", "a")
    my_hash = File.foreach("product.txt") { |f| print f }
    puts my_hash
    puts "Enter the Product name"
    name=gets
     productop=ProductOperation.new
     productop.search_product(name)
  when "5\n"

    puts "Enter the Product id"
    id=gets
    product.prod_id="#{id}"
  end
  end
end



