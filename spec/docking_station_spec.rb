require_relative 'spec_helper'

describe Docking_station do

  subject(:docking_station) { described_class.new }

  let(:bike) { double :bike }

  it("stores a bike") do
    expect(docking_station.store_bike(bike)).to eq([bike])
  end
end
