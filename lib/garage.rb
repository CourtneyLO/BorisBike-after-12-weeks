class Garage

  attr_reader :fix_bikes

  def initialize
    @fix_bikes = []
  end

  def accept_bike(bike)
    @fix_bikes.push(bike)
  end

  def distribute_bike(bike)
    @fix_bikes.delete(bike)
  end

end
