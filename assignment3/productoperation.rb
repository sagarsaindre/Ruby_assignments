require_relative "product"


class ProductOperation
  def add_product(product)

      file = File.open("product.txt", "a")
     file.puts product

     file.close()
    puts"Added Successfully"
  end

  def remove_product(prod_id)
     my_hash.each do |key|
     puts key
     end
    puts "#{prod_id}"

  end

  def list_product
    file = File.open("product.txt", "r")
    my_hash = File.foreach("product.txt") { |f| print f }
    puts my_hash
  end

  def search_product(prod_name)

  end

  def add_booking(book)
    file = File.open("orders.txt", "a")
    file.puts book
    file.close()
    puts"Booked..."
  end

  def list_booking
    my_hash = File.foreach("orders.txt") { |f| print f }
    p my_hash
  end
end
