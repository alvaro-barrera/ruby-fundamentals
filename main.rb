file_location = "sample.txt"

content = File.read(file_location)
puts content

new_content = "New append - block!"

# mode: "a" - append content
File.write(file_location, new_content, mode: "a")

File.open(file_location, "a") do |file|
    file.write(new_content)
end