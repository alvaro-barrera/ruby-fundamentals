def greet
    puts "What's your name?"
    name = "John"
    yield name
end

greet do |name|
    puts "Hello #{name}"
end

puts "#{name}"