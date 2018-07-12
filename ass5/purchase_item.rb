require_relative'price_calculator'
SEPERATOR=','
class Purchase
  #Take input from user seperated by comma,split and put into array
  def accept_item
    puts "Enter the elements"
    input=gets.chomp
     split=input.split(SEPERATOR)
     array=split.to_a
    count_occurence(array)
  end
   #To count the occurence of item
  def count_occurence(array)
    counts = Hash.new(0)
    array.each { |name| counts[name] += 1 }
    puts counts

    price_calculator=PriceCalculator.new
    price_calculator.sepitem_quantity(counts)

  end
end

purchase=Purchase.new
purchase.accept_item