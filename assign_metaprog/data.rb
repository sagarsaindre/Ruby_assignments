require 'csv'

class DataStorage
  def accept_file
    puts "Enter the file name"
    file=gets.chomp

    file_data = CSV.read("#{file}",{ headers: true})


    puts headers = (file_data.headers)
    row_data = file_data.map { |d| d }
     file_name=File.basename(file,File.extname(file)).capitalize

    class_creation(headers,file_name,row_data)
  end
  def class_creation(headers,file_name,hash)
    klass = Object.const_set(file_name,Class.new)
     puts "#{klass} class created"
     puts hash
    klass.class_eval do
     attr_accessor *headers
     def initialize(attr)
      @attr=attr
       puts @attr
     end
   end
  end
end

datastorage=DataStorage.new
datastorage.accept_file