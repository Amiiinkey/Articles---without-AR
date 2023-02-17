require_relative './magazine.rb'

magazine1 = Magazine.new("new bees", "news")

magazine2 = Magazine.new("food", "store")

magazine3 = Magazine.new("clothes", "shop")

magazine = Magazine.find_by_name("clothes")

puts "#{magazine.name} is a #{magazine.category} magazine"
