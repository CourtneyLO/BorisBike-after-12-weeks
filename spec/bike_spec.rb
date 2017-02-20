require_relative "spec_helper"

describe Bike do

  subject(:bike) { described_class.new }

  it("initialize with bike working status as true") do
    expect(bike.working_status).to eq(true)
  end
end
