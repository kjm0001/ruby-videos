require 'support/number_helper'
class Restaurant
  include NumberHelper

  attr_accessor :name, :cuisine, :price
  
  # class variable not accessible outside the class
  @@filepath = nil
  ## setter method
  def self.filepath=(path=nil)
    @@filepath = File.join(APP_ROOT, path)
  end  
  
  ## 3 Class methods since it has self at the beginning not instance methods
  def self.file_exists?
    # class should know if the restaurant file exists
    # Has the filepath been set and does the file actually exist on the filesystem
    if @@filepath && File.exists?(@@filepath)
      return true
    else
      return false
    end
  end
  
  def self.file_usable?
    # return false if any of the steps fail or if it passes all then return true
    return false unless @@filepath
    return false unless File.exists?(@@filepath)
    return false unless File.readable?(@@filepath)
    return false unless File.writable?(@@filepath)
    return true
  end  
  
  def self.create_file
    # create the restaurant file
    File.open(@@filepath, 'w') unless file_exists?
    return file_usable?
  end
  
  def self.saved_restaurants
    # read the restaurant file
    # return the instances of restaurant
    restaurants = []
    if file_usable?
      file = File.new(@@filepath, 'r')
      file.each_line do |line|
        restaurants << Restaurant.new.import_line(line.chomp)
      end  
      file.close
    end
    return restaurants
  end
  
  def self.build_from_questions
    args = {}
    print "Restaurant name: "
    args[:name] = gets.chomp.strip
    print "Cuisine Type: "
    args[:cuisine] = gets.chomp.strip
    print "Average price: "
    args[:price] = gets.chomp.strip
    
    return self.new(args)
  end  
  
  def initialize(args={})
    @name    = args[:name]    || ""
    @cuisine = args[:cuisine] || ""
    @price   = args[:price]   || ""
  end
  
  def import_line(line)
    line_array = line.split("\t")
    @name, @cuisine, @price = line_array
    return self
  end  
  
  ## Instance method
  def save
    return false unless Restaurant.file_usable?
    File.open(@@filepath, 'a') do |file|
      file.puts "#{[@name, @cuisine, @price].join("\t")}\n"
    end
    return true
  end
  
  def formatted_price
    number_to_currency(@price)
    
  end    
  


end