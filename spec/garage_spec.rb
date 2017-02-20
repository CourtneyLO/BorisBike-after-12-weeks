require_relative "spec_helper"

describe Garage do

  subject(:garage) { described_class.new }

  let(:bike) { double :bike }

  it("should initialize with an empty fix_bikes array") do
    expect(garage.fix_bikes).to eq([])
  end

  it("should accept bikes") do
    garage.accept_bike(bike)
    expect(garage.fix_bikes).to include(bike)
  end
end
