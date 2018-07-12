class PriceCalculator
  #Seperate item and quantity
  def sepitem_quantity(counts)
     puts 'item  ---- quantity'
     counts.each do |key, value|
      puts "#{key}   :   #{value}"
     end
  end
  def calculate_bill
        puts counts
  end
end