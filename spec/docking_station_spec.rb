require_relative 'spec_helper'

describe Docking_station do

  subject(:docking_station) { described_class.new() }

  let(:bike) { double :bike }

  before do
    allow(bike).to receive(:update_status).with("working")
    allow(bike).to receive(:working_status).and_return(true)
  end

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

context("raise an error") do

  it("if there are no bikes in the docking station") do
    expect{docking_station.release_bike(bike)}.to raise_error("Bike cannot be released: There are no working bikes in the docking station")
  end

  it("if store_bike is called and docking station is fill to capacity") do
    10.times{docking_station.store_bike(bike)}
    expect{docking_station.store_bike(bike)}.to raise_error("Bike cannot be stored: Docking station is at its full capacity")
  end
end

context("#capacity") do

  subject(:docking_station) { described_class.new(20) }

  it("allows for full capacity limited to be changed") do
    expect(docking_station.capacity).to eq(20)
  end

end

context("broken bike") do

  it("should not release a bike if it is broken") do
    allow(bike).to receive(:update_status).with("broken").and_return(false)
    allow(bike).to receive(:working_status).and_return(false)
    docking_station.store_bike(bike, "broken")
    docking_station.release_bike(bike)
    expect(docking_station.bikes).to include(bike)
  end


end

end
