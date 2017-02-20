class Docking_station

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def store_bike(bike)
    @bikes.push(bike)
  end

  def release_bike(bike)
    if @bikes.empty?
      raise "Bike cannot be released: There are no bikes in the docking station"
    else
      @bikes.delete(bike)
    end 
  end



end
