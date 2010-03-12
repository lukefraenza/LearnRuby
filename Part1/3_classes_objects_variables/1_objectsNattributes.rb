
class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  def price=(new_price)
    @price = new_price
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

b1 = BookInStock.new("isbn1", 3)
p b1
puts b1
puts b1.price
b1.price = b1.price * 0.75    # discount price
puts b1.price

b2 = BookInStock.new("isbn2", 3.14)
p b2
puts b2
puts b2.price_in_cents
b2.price_in_cents = 1234
puts b2.price

b3 = BookInStock.new("isbn3", "5.67")
p b3
puts b3

#-------------------
#-------------------
#-------------------

class DayStats
  attr_reader :date
  attr_accessor :baseScore, :bonusScore
  def initialize(date)
    @date = date
  end
  def to_s
    "Date: #{@date}"
  end
end

a_day = DayStats.new('2010-03-11')
puts a_day
puts a_day.date
