class Bike

  attr_reader :working_status

  def initialize()
    @working_status = true
  end

  def update_status(status)
    @working_status = false if status == "broken"
    return working_status
  end

end
