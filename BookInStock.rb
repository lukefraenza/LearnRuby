class BookInStock

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

end

a_book = BookInStock.new
b_book = BookInStock.new
