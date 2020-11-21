class Waiter
  attr_reader :name, :year_of_experience

  @@all = []
  def initialize(name, year_of_experience)
    @name = name
    @year_of_experience = year_of_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end

  def best_tipper
    self.meals.max_by {|meal| meal.tip}.customer
  end

end