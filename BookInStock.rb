class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

end

b1 = BookInStock.new("isbn1",3)
puts b1
b2 = BookInStock.new("isbn2",3.14)
puts b2
b3 = BookInStock.new("isbn3","5.67")
puts b3

puts "ISBN  = #{b1.isbn}"
puts "Price = #{b1.price}"

b1.price = b1.price * 0.75  #discount price
puts "New price = #{b1.price}"
