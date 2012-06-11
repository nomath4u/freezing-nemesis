#!/usr/bin/ruby


################################################################################# 
# ## Program Name: shapes.rb
# ## Author: Christopher Harper
# ## Date: 6/14/2012
# ## Description: Finds the area/volume of select shapes
# ## Input: Selections
# ## Output: Area/Volume
# #############################################################################

require 'mathn'
Math::constants.grep /pi/i
STDOUT.flush
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
=begin
class Trapezoid
	attr_accessor
=end 
exit_shapeloop = FALSE
exit_calcloop = FALSE
until exit_shapeloop == TRUE do
	puts "[1] Circle \n"
	puts "[2] Rectangle \n"
	puts "[3] Trapezoid \n"
	puts "[4] Triangle \n"
	puts "Select shape:"
	shape_select = gets.chomp.to_i         #Without the to_i the following case always fails
	exit_shapeloop = case shape_select
		when 1..4 then TRUE
		else           FALSE
		end
	end
until exit_calcloop == TRUE do
	puts "Select a calculation"
	puts "[1]Area \n"
	puts "[2]Volume \n"
	puts "[3] Both \n"
	calc = gets.chomp.to_i
	exit_calcloop = case calc
		when 1..3 then TRUE
		else           FALSE
		end
	end

shape = case shape_select
	when 1 then Circle.new
	when 2 then Rectangle.new
=begin
	These classes haven't been implemented yet

	when 3 then Trapezoid.new
	when 4 then Triangle.new
=end
	else
		puts "Shape select not working"        #Shouldn't happen because of exit_shapeloop
	end
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
