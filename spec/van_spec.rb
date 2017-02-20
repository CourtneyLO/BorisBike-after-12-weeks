require "spec_helper"

describe Van do

  subject(:van) { described_class.new }

  let(:bike) { double :bike }

  it("initializes with an empty array") do
    expect(van.broken_bikes).to eq([])
  end

  it("adds broken bikes to the van array") do
    van.add_bike(bike)
    expect(van.broken_bikes).to eq([bike])
  end

  it("removes bike for bikes array") do
    van.add_bike(bike)
    van.deliver_bike(bike)
    expect(van.broken_bikes).to eq([])
  end

end
