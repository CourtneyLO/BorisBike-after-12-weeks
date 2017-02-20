require_relative "spec_helper"

describe Garage do

  subject(:garage) { described_class.new }

  let(:bike) { double :bike }

  it("should initialize with an empty fix_bikes array") do
    expect(garage.fix_bikes).to eq([])
  end

  it("accepts bikes but putting bike into fix_bikes array") do
    garage.accept_bike(bike)
    expect(garage.fix_bikes).to include(bike)
  end

  it("distributes bike buy deleting bike from fix_bike array") do
    garage.accept_bike(bike)
    garage.distribute_bike(bike)
    expect(garage.fix_bikes).not_to include(bike)
  end
end
