class Docking_station

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def store_bike(bike)
    @bikes.push(bike)
  end

end
