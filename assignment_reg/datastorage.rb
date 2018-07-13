
SOURCE_FILE='vehicle_reports.html'
DATA_FILE='my_file.csv'
class DataStorage
  #read the file and remove tags and quote
  def read_file
    File.open("#{SOURCE_FILE}","r").each do |line|
     s=line.gsub((/<\/?[^>]*>/), "|")
      puts  p=s.gsub((/"/), "")
    write_data(p)
   end
  end
  #write the data in file
  def write_data(s)
    File.open("#{DATA_FILE}", "a") do |csv|
    csv << s
  end
  end
end

datastorage=DataStorage.new
datastorage.read_file

