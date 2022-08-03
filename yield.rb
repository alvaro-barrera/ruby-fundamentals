def my_method
    puts "Inside my_method"
    yield
    yield
end

my_method do
    puts "Inside the block"
end