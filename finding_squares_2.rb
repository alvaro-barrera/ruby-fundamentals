evens = [2,4,6,8]
odds = [1,3,5,7]

squares = Proc.new {|num| num ** 2}

square_of_evens = evens.map(&squares)
square_of_odds = odds.map(&squares)
p square_of_evens
p square_of_odds