class Docking_station

  attr_reader :bikes

  FULL_CAPACITY = 10

  def initialize
    @bikes = []
  end

  def store_bike(bike)
    raise "Bike cannot be stored: Docking station is at its full capacity" if at_full_capacity?
    @bikes.push(bike)
  end

  def release_bike(bike)
    if @bikes.empty?
      raise "Bike cannot be released: There are no bikes in the docking station"
    else
      @bikes.delete(bike)
    end
  end

  private

    def at_full_capacity?
      bikes.length >= FULL_CAPACITY
    end


end
