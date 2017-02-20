require_relative "spec_helper"

describe Bike do

  subject(:bike) { described_class.new }

  it("initialize with bike working status as true") do
    expect(bike.working_status).to eq(true)
  end

  it("indicates bike is broken") do
    bike.update_status("broken")
    expect(bike.working_status).to eq(false)
  end

  it("indicates bike is in good working order") do
    status = "working"
    bike.update_status(status)
    expect(bike.working_status).to eq(true)
  end
end
