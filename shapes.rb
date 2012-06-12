#!/usr/bin/ruby


################################################################################# 
# ## Program Name: shapes.rb
# ## Author: Christopher Harper
# ## Date: 6/14/2012
# ## Description: Finds the area/volume of select shapes
# ## Input: Selections
# ## Output: Area/Volume
# #############################################################################

require 'mathn'   #Required for math with fractions





# Define the types of shapes and all of the calculations and values specific to them
class Circle
	attr_accessor :radius
	
	def area
		@area = Math::PI * (@radius ** 2)
	end
	def volume
		@volume = 4/3 * Math::PI * (@radius ** 3)
	end
	def read_values_area
		puts "Enter radius"
		@radius = gets.chomp.to_i
	end
	def read_values_volume
		puts "Enter radius"
		@radius = gets.chomp.to_i
	end
end



class Rectangle
	attr_accessor :length , :width , :height
	
	def area 
		@area = @length * @width
	end
	def volume
		@volume = @length * @width * @height
	end
	def read_values_area
		puts "Enter length"
		@length = gets.chomp.to_i
		puts "Enter width"
		@width = gets.chomp.to_i
	end
	def read_values_volume
		puts "Enter length"
		@length = gets.chomp.to_i
		puts "Enter width"
		@width = gets.chomp.to_i
		puts "Enter height"
		@height = gets.chomp.to_i
	end
end



class Trapezoid
	attr_accessor :base1 , :base2 , :length, :height

	def area
		@area = (1/2) * (@base1 + @base2) * @height
	end
	def volume
		@volume = (1/2) * (@base1 + @base2) * @height * @length
	end
	def read_values_area
		puts "Enter base 1"
		@base1 = gets.chomp.to_i
		puts "Enter base 2"
		@base2 = gets.chomp.to_i
		puts "Enter height"
		@height = gets.chomp.to_i
	end
	def read_values_volume
		puts "Enter base 1"
		@base1 = gets.chomp.to_i
		puts "Enter base 2"
		@base2 = gets.chomp.to_i
		puts "Enter length"
		@length = gets.chomp.to_i
		puts "Enter height"
		@height = gets.chomp.to_i
	end
end



class Triangle
	attr_accessor :base, :height, :length
	
	def area
		@area = (1/2) * @base * @height
	end
	def volume
		@volume = (1/2) * @base * @height * @length
	end
	def read_values_area
		puts "Enter base"
		@base = gets.chomp.to_i
		puts "Enter height"
		@height = gets.chomp.to_i
	end
	def read_values_volume
		puts "Enter base"
		@base = gets.chomp.to_i
		puts "Enter height"
		@height = gets.chomp.to_i
		puts "Enter length"
		@length = gets.chomp.to_i
	end
end







#Initialize variables to break out of the loops
exit_shapeloop = false
exit_calcloop = false








#Loops to get through selection


#Loop to select the shape
until exit_shapeloop == true do
	puts "[1] Circle \n"
	puts "[2] Rectangle \n"
	puts "[3] Trapezoid \n"
	puts "[4] Triangle \n"
	puts "Select shape:"
	shape_select = gets.chomp.to_i         #Without the to_i the following case always fails
	exit_shapeloop = ((1..4) === shape_select)
	end


#Loop to select the calculation to do on the shape
until exit_calcloop == true do
	puts "Select a calculation"
	puts "[1]Area \n"
	puts "[2]Volume \n"
	puts "[3] Both \n"
	calc = gets.chomp.to_i
	exit_calcloop = ((1..3) === calc)
	end












#Create an object based on the shape selection
shape = case shape_select
	when 1 then Circle.new
	when 2 then Rectangle.new
	when 3 then Trapezoid.new
	when 4 then Triangle.new
	else
		puts "Shape select not working"        #Shouldn't happen because of exit_shapeloop
	end



#Read in values based on the selected shape, do and display the calculations with those values
answer = case calc
	when 1 then shape.read_values_area
		puts "The area is ", shape.area
	when 2 then shape.read_values_volume
		puts "The volume is ", shape.volume
	when 3 then shape.read_values_volume
		puts "The area is",shape.area,"The volume is", shape.volume
	else   
		puts "Calc loop not working"           # This shouldn't happen because of the calcloop

	end
