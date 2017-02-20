class Docking_station

  attr_reader :bikes, :capacity

  FULL_CAPACITY = 10

  def initialize(capacity = FULL_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def store_bike(bike)
    raise "Bike cannot be stored: Docking station is at its full capacity" if at_full_capacity?
    @bikes.push(bike)
  end

  def release_bike(bike)
    raise "Bike cannot be released: There are no bikes in the docking station" if @bikes.empty?
    @bikes.delete(bike)
  end

  private

    def at_full_capacity?
      bikes.length >= capacity
    end


end
