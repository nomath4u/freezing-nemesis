#!/usr/bin/ruby


################################################################################# ## Program Name: shapes.rb
# ## Author: Christopher Harper
# ## Date: 6/14/2012
# ## Description: Finds the area/volume of select shapes
# ## Input: Selections
# ## Output: Area/Volume
# #############################################################################


STDOUT.flush
def selectShape
	begin
		puts "[1] Circle \n"
		puts "[2] Rectangle \n"
		puts "[3] Trapezoid \n"
		puts "[4] Triangle \n"
        	puts "Select shape:"
		shape = gets.chomp.to_i
		if shape == 1 or shape == 2 or shape == 3 or shape == 4
			exitLoop = 1
		else 
			puts "Invalid selection"
		end
	end until exitLoop == 1
	puts shape
end

selectShape
