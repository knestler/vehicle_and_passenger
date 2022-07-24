class Park

  attr_reader :name, :admission, :vehicles

  def initialize(name, admission)
    @name = name
    @admission = admission
    @vehicles  = []
    @revenue = ()
  end

  def add_park_vehicles(vehicle)
   @vehicles << vehicle
  end

  def park_guest
    vehicles.flat_map do |vehicle|
      vehicle.passengers
    end
  end


  #  @vehicles.find_all do |vehicle|
  #   @park_passengers << @vehicles.passengers
  #   end.flatten
# end
  
  # def generate_revenue
  #   @park_passengers.sum do |passenger|
  #   @park_passengers.num_adults * admission
  #   end
  # end

end


# Each park has a unique name and admission price, as well as a way to read that data
# Each park can list all the vehicles that entered the park
# Each park can list all the passengers that entered the park
# Each park can calculate revenue generated. Revenue is generated by charging the admission price per adult that entered the park.
# Build upon your existing code from the first two iterations to implement this functionality.