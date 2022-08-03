class Book
  def title=(s)
    @title = s
  end

  def title
    @title
  end
end

b = Book.new