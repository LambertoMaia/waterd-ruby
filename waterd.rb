# Buoyant force equation 
# B = p x V x g

gravity_force = 9.8 # m/s^2

water_density = {
    :sea_water      => 1025, # kg/m^3
    :fresh_water    => 1000 # kg/m^3
}

# Getting the object's volume
puts "Enter the object volume in m^3: "
object_volume = gets.chomp.to_f

# Getting the selected water density
puts "Select the water density: "
puts "1 - Sea water"
puts "2 - Fresh water"
water_density_option = gets.chomp.to_i

# Calculating the buoyant force
case water_density_option
when 1
    buoyant_force   = water_density[:sea_water] * object_volume * gravity_force
    displaced_water = water_density[:sea_water] * object_volume
when 2
    buoyant_force = water_density[:fresh_water] * object_volume * gravity_force
    displaced_water = water_density[:sea_water] * object_volume
else
    puts "Invalid option"
end

# Formatting the decimal places
buoyant_force = format("%.2f", buoyant_force)
displaced_water = format("%.2f", displaced_water)

# Printing the results
puts "The buoyant force is #{buoyant_force} N"
puts "The displaced water is #{displaced_water} kg"


