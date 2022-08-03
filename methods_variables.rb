class Book
  def initialize(title:, author:, pub_year:)
    @title = title
    @author = author
    @pub_year= pub_year
  end
end

b = Book.new(pub_year: 2020, title: "code", author: "Ruby Red")
p b