require_relative "Product"


class ProductOperation
  @@id=1
  def add_product(prod_name, prod_price, stock_item, company_name,store_no)

      file = File.open("product.txt", "a")
     file.puts @@id.to_s+"    "+prod_name+"    "+prod_price+"    "+stock_item+"    "+company_name+"    "+store_no
     @@id+=1
     file.close()
    puts"Added Successfully"
  end

  def remove_product(prod_id)
    file = File.open("product.txt", "a")
    file.
  end

  def list_product
    data=''
    file = File.open("product.txt", "r")
    file.each_line do |line|
      data=data+line
    end
    return data
  end
end
end
