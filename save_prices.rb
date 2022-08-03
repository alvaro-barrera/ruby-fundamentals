require "csv"

file_location = "prices_3.csv"

# data = [
#     ["date", "price"],
#     ["2020-03-01", 5000],
#     ["2020-03-02", 4500],
#     ["2020-03-03", 8000],
# ]

# content = data.map{ |item| item.join(",") }.join("\n")

# File.write(file_location,content)

def add_price(file_location,current_date,current_price)
    CSV.open(file_location, "a") do |f|
        f << [current_date, current_price]
    end
end

add_price(file_location,"2020-03-06",8000)
add_price(file_location,"2020-03-07",9000)