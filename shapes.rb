#!/usr/bin/ruby


################################################################################# 
# ## Program Name: shapes.rb
# ## Author: Christopher Harper
# ## Date: 6/14/2012
# ## Description: Finds the area/volume of select shapes
# ## Input: Selections
# ## Output: Area/Volume
# #############################################################################


STDOUT.flush
exit_shapeloop = FALSE
exit_calcloop = FALSE
until exit_shapeloop == TRUE do
	puts "[1] Circle \n"
	puts "[2] Rectangle \n"
	puts "[3] Trapezoid \n"
	puts "[4] Triangle \n"
	puts "Select shape:"
	shape = gets.chomp.to_i         #Without the to_i the following case always fails
	exit_shapeloop = case shape
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

	
