require 'json'

data = {
    records: []
}

100000.times do 
    data[:records] << {foo: "bar"}
end

# content = data.to_json - simple JSON
content = JSON.pretty_generate(data)

File.write("large_json.json", content)