# Base class for all vehicles
class Vehicle
    attr_accessor :mileage, :fuel_level
  
    def initialize(mileage, fuel_level)
      @mileage = mileage
      @fuel_level = fuel_level
    end
  
    # Common functionality: calculate mileage
    def calculate_mileage(distance, fuel_used)
      @mileage = distance / fuel_used
      puts "Mileage: #{@mileage} km/l"
    end
  
    # Common functionality: check fuel level
    def check_fuel_level
      puts "Fuel level: #{@fuel_level} liters"
    end
  
    # Common functionality: perform general maintenance
    def perform_maintenance
      puts "General maintenance completed."
    end
  end
  
  # Subclass for cars
  class Car < Vehicle
    attr_accessor :number_of_doors
  
    def initialize(mileage, fuel_level, number_of_doors)
      super(mileage, fuel_level)
      @number_of_doors = number_of_doors
    end
  
    # Car-specific maintenance
    def perform_maintenance
      super
      puts "Car-specific maintenance completed."
    end
  end
  
  # Subclass for trucks
  class Truck < Vehicle
    attr_accessor :cargo_capacity
  
    def initialize(mileage, fuel_level, cargo_capacity)
      super(mileage, fuel_level)
      @cargo_capacity = cargo_capacity
    end
  
    # Truck-specific functionality: load cargo
    def load_cargo(weight)
      if weight > @cargo_capacity
        puts "Error: Exceeds cargo capacity!"
      else
        puts "Cargo loaded: #{weight} tons."
      end
    end
  end
  
  # Subclass for motorcycles
  class Motorcycle < Vehicle
    attr_accessor :type
  
    def initialize(mileage, fuel_level, type)
      super(mileage, fuel_level)
      @type = type
    end
  
    # Motorcycle-specific maintenance
    def perform_maintenance
      super
      puts "Motorcycle-specific maintenance completed for #{@type} bike."
    end
  end
  
  # Example usage
  car = Car.new(15, 40, 4)
  truck = Truck.new(8, 100, 10)
  motorcycle = Motorcycle.new(50, 15, "Sports")
  
  puts "--- Car ---"
  car.check_fuel_level
  car.perform_maintenance
  
  puts "--- Truck ---"
  truck.calculate_mileage(200, 25)
  truck.load_cargo(8)
  
  puts "--- Motorcycle ---"
  motorcycle.check_fuel_level
  motorcycle.perform_maintenance
  
