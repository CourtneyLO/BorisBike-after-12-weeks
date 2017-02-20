require "spec_helper"

describe Van do

  subject(:van) { described_class.new }

  let(:bike) { double :bike }

  it("initializes with an empty array") do
    expect(van.broken_bikes).to eq([])
  end
end
