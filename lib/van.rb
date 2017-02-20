class Van

  attr_reader :broken_bikes

  def initialize
    @broken_bikes = []
  end

  def add_bike(bike)
    @broken_bikes.push(bike)
  end

end
