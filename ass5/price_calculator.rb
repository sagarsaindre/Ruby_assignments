require_relative 'item'

class PriceCalculator
  def initialize()
  @discount_total=0
  end
  #Seperate item and quantity
  def sepitem_quantity(counts)
     puts 'item  ---- quantity'
     counts.each do |key, value|
      puts "#{key}   :   #{value}"

       item=Item.new
       v=item.pick_line(key)
      total_with_disc=discount_bill(key,value,v)
      without_disc_bill(key,value,v,total_with_disc)
     end
  end
    #calculate bill with discount
  def discount_bill(key,value,v)
    puts v

    quotient=value/v['disc_item'].to_f
    tot1=quotient*v['disc_price'].to_f

    remainder=value/v["disc_item"].to_f
    tot2=remainder*v["unit_price"].to_f

     @discount_total=tot1+tot2

     display_result(key,value,@discount_total)
  end
    #display the calculated bill
  def display_result(key,value,discount_total)
    puts "#{key}    :    #{value}    :    #{discount_total}"
  end

  def total_bill(discount_total)
    total_bill+=disccount_total
    puts "Total Bill: #{total_bill}"
  end

  def without_disc_bill(key,value,v,total_with_disc)
     total_without_disc=value*v["unit_price"]
     save=total_without_disc-total_with_disc
     puts "You saved today: #{save}"
  end
end