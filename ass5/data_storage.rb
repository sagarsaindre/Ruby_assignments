class DataStorage
  attr_accessor :file
  def initialize(file)
    @file=file
  end
  #Open file at append mode and write in file
  def append_mode(line)
    File.open("#{file}","a") {|file| file.puts line}
  end
end