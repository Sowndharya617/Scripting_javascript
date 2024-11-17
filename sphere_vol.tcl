#!/usr/bin/env tclsh

# Function to calculate the volume of a sphere
proc sphereVolume {radius} {
    return [expr {(4.0/3.0) * 3.14159 * pow($radius, 3)}]
}

# Prompt the user for the radius
puts "Enter the radius of the sphere: "
flush stdout
set radius [gets stdin]

# Convert input to a number and calculate volume
set volume [sphereVolume $radius]

# Display the result
puts "The volume of the sphere with radius $radius is $volume."
