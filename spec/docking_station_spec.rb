require_relative 'spec_helper'

describe Docking_station do

  subject(:docking_station) { described_class.new }

  let(:bike) { double :bike }

  it("stores a bike") do
    expect(docking_station.store_bike(bike)).to include(bike)
  end

  it("release a bike") do
    docking_station.store_bike(bike)
    expect(docking_station.release_bike(bike)).to eq(bike)
  end

  it("release bike and bikes array should be empty") do
    docking_station.store_bike(bike)
    docking_station.release_bike(bike)
    expect(docking_station.bikes).to eq([])
  end

  it("shows the bikes that are available for use") do
      5.times{docking_station.store_bike(bike)}
      expect(docking_station.bikes).to eq([bike, bike, bike, bike, bike])
  end

  it("should raise an error if there are no bikes in the docking station") do
    expect{docking_station.release_bike(bike)}.to raise_error("Bike cannot be released: There are no bikes in the docking station")
  end

  it("should raise an error if store_bike is called and docking station is fill to capacity") do
    10.times{docking_station.store_bike(bike)}
    expect{docking_station.store_bike(bike)}.to raise_error("Bike cannot be stored: Docking station is at its full capacity")
  end

end
