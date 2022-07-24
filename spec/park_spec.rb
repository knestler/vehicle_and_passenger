require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do



  
  it 'exists' do 
    park = Park.new("Acadia", 5)
  end

  it 'has attrubutes' do
    park = Park.new("Acadia", 5)
    expect(park.name).to eq("Acadia")
    expect(park.admission).to eq 5
  end
  
  it 'lists vehicles' do
    park = Park.new("Acadia", 5)

    expect(park.vehicles).to eq([])
    
     @vehicle = Vehicle.new("2001", "Honda", "Civic")
     park.add_park_vehicles(@vehicle)
    
     expect(park.vehicles).to eq([@vehicle])
  end

  it 'list all the passengers' do
    park = Park.new("Acadia", 5)

    vehicle = Vehicle.new("2001", "Honda", "Civic")
    #vehicle_2 = Vehicle.new("2015", "Audi", "A3")
    
    park.add_park_vehicles(vehicle)
    # park.add_park_vehicles(vehicle_2)
    
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)
    # require"pry";binding.pry

    expect(park.park_guest).to eq([charlie, jude, taylor])
  
  end

  xit "can generate revenue" do
    park = Park.new("Acadia", 5)

    vehicle = Vehicle.new("2001", "Honda", "Civic")
    vehicle_2 = Vehicle.new("2015", "Audi", "A3")
    
    park.add_park_vehicles(vehicle)
    park.add_park_vehicles(vehicle_2)
    
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)
    #require"pry";binding.pry
    expect(park.generate_revenue).to eq(10)
  end

end