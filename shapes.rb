#!/usr/bin/ruby


################################################################################# 
# ## Program Name: shapes.rb
# ## Author: Christopher Harper
# ## Date: 6/14/2012
# ## Description: Finds the area/volume of select shapes
# ## Input: Selections
# ## Output: Area/Volume
# #############################################################################

Math::constants.grep /pi/i
STDOUT.flush
class Circle
	@@radius = gets.chomp.to_i
	def area
		@area = Math::PI * (@@radius ** 2)
		puts @area
	end
	def volume
		@volume = (4/3) * Math::PI * (@@radius ** 3)
		puts @volume
	end
end
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
shape = case shape_select
	when 1 then Circle.new
=begin
	These classes haven't been implemented yet

	when 2 then Rectangle.new
	when 3 then Trapezoid.new
	when 4 then Triangle.new
=end
	else 
		puts "Shape select not working"        #This shouldn't happen because of exit_shapeloop check
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
