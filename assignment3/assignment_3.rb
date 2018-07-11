require_relative "Product"
require_relative "ProductOperation"

class Shopkeeper
  puts"1. Add product
       2. Remove the product
       3. List all products with all details and id
       4. Search the product by name
       5. Edit the product "
  puts "Enter your Choice"
  n=gets

  case n
  when "1\n"

    product=Product.new

    puts "Enter Product_name"
    name=gets.chomp
    product.prod_name="#{name}"
    puts "Enter Product_price"
    price=gets.chomp
    product.prod_price="#{price}"
    puts "Enter the stock"
    stock=gets.chomp
    product.stock_item="#{stock}"
    puts "Enter Company name"
    company=gets.chomp
    product.company_name="#{company}"
    puts " Enter store no"
    sr_no=gets.chomp
    product.store_no="#{sr_no}"

    productop=ProductOperation.new
    productop.add_product(name,price,stock,company,sr_no)


  when "2\n"
    product=Product.new

    puts "Enter the Product id"
    id=gets
    product.prod_id="#{id}"

     productop=ProductOperation.new
     productop.remove(id)
  when "3\n"

     productop=ProductOperation.new
     productop.list_product
  when "4\n"
     product=Product.new

    puts "Enter the Product name"
    name=gets
    product.prod_name="#{name}"

  when "5\n"
     product=Product.new

    puts "Enter the Product id"
    id=gets
    product.prod_id="#{id}"
  end
end



