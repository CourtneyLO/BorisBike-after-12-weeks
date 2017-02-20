class Van

  attr_reader :broken_bikes

  def initialize
    @broken_bikes = []
  end

  def add_bike(bike)
    @broken_bikes.push(bike)
  end

  def deliver_bike(bike)
    @broken_bikes.delete(bike)
  end

end
