require './methods_variables'
class Collection
  attr_reader :name

  def initialize(name)
    @name = name
    @books = []
  end

  def [](index)
    @books[index]
  end
end

class Collection
  def []=(index, book)
    @books[index] = book
  end
end

class Collection

  # Custom operators
  def <<(book)
    @books << book
  end

  def !
    @books.empty?
  end

  def <=> (other)
    name <=> other.name
  end

  def ==(other)
    name == other.name
  end

  def eql?(other)
    self == other
  end
end

c = Collection.new("Software")
if !c
  puts "Collection #{c.name} is empty"
end

c << Book.new(title: "Code", author: "Ruby Red", pub_year: 2020)
c << Book.new(title: "Testing", author: "Ruby Red", pub_year: 2018)
p c

fiction = Collection.new("Fiction")
science = Collection.new("Science")
p fiction <=> science

c1 = Collection.new("Fiction")
c2 = Collection.new("Fiction")
p c1 == c2

p c1.eql?(c2)
p c1.equal?(c2)