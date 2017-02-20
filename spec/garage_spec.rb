require_relative "spec_helper"

describe Garage do

  subject(:garage) { described_class.new }

  it("should initialize with an empty fix_bikes array") do
    expect(garage.fix_bikes).to eq([])
  end
end
