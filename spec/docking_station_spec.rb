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

end
