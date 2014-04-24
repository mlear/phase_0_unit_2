# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# 1.)  i will first define a method titled groups.
# 2.)  this method will devide an array of names into groups of 4, with the remainder added as needed.
# 3.)  this will be repeated a total of 3 times to give 3 seperate unit lists of groups.
# 4.)  a test will be devised to determine if the code is working correctly.

# 3. Initial Solution

studentArray = ["Ajay Bir Singh", "Jennifer Oseitutu", "Andrew Principe", "Joseph Rosztoczy", "Simon Gondeck", "Hing Huynh", "Michael Ginalick", "John Thomas Mulvahill", "Phillip Smith", "Colin Trent", "Matthew Hein", "Zach Pflederer", "Stuart Pearlman", "Chad Everett Howard", "Spencer Olson", "Tim Howard", "Neel Shah", "Celeen Rusk", "Dakota Cousineau", "Osama Zayyad", "Lienha Carleton", "Martin A. Lear"]

def group(students)
	overflow = (students.length % 4)
	num_group = (students.length / 4)
	group_size = num_group
	counter = num_group - 1
	display = 0
	z=0
	x=0
	y=0
	unit = Hash.new
	3.times do
		while group_size!= 0 
			counter.times do
 				unit[[x, y]] = students[z]
			 	z += 1
			 	y += 1
			end
 			group_size -= 1 
 			x += 1
 			y = 0
 		end
 		while overflow != 0
 			unit[[overflow, (num_group - 1)]] = students[z]
 			overflow -= 1
 			z += 1
 		end
 		puts unit
 		x = 0
 		z = 0
 		y = 0
 		students.shuffle!
 	end
end

group(studentArray)

# 4. Refactored Solution




# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


