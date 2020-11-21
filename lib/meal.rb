class Meal
  attr_reader :total, :tip, :waiter, :customer

  @@all = []
  def initialize(waiter, customer, total, tip)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @total = 0
    self.class.all << self
  end

  def self.all
    @@all
  end
  
end