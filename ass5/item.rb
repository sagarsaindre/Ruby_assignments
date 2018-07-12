require_relative 'data_storage'
SEPERATOR='|'


class Item
  #
  def pick_line(item_name)
    ehash = {"item"=>[{"item_name"=>"milk", "unit_price"=>"3.97", "disc_item"=>"2","disc_price"=>"5"},
                   {"item_name"=>"bread", "unit_price"=>"2.17", "disc_item"=>"3","disc_price"=>"6"},
                    {"item_name"=>"banana", "unit_price"=>"0.99", "disc_item"=>"1","disc_price"=>"0.99"},
                     {"item_name"=>"apple", "unit_price"=>"0.89", "disc_item"=>"1","disc_price"=>"0.89"},    ]}
        puts hash=ehash['item'].find_all { |e| e['item_name'] == "#{item_name}"}

  end

end

item=Item.new()
item.pick_line('milk')



