require 'csv'

file_location = 'prices.csv'
content = File.read(file_location)

data = CSV.parse(content, headers: true)

data.each do |item|
    puts "DATE: #{item["date"]} PRICE: #{item["price"]}"
end