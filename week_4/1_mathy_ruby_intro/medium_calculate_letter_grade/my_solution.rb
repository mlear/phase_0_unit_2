# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# 1.) I will define method as get_grade.
# 2.) get_grade will be passed an array of numbers and an average will be calculated
# 2.) When get_grade is passed an integer in the value or 90 or greater, it will return
# 		the grade of "A"
# 3.) When get_grade is passed an integer in the value of 80 or greater, it will return
# 		the grade of "B" 
# 4.) When get_grade is passed an integer in the value of 70 or greater, it will return
# 		the grade of "C" 
# 5.) When get_grade is passed an integer in the value of 60 or greater, it will return
# 		the grade of "D" 
# 6.) When get_grade is passed an integer in the value of 50 or greater, it will return
# 		the grade of "F" 

# 2. Initial Solution

def get_grade(grades)
	sum = 0
	total = grades.length
	grades.each { |x| sum = (sum + x) }
	average = (sum / total)
	if average >= 90
		return "A"
	elsif average >= 80
		return "B"
	elsif average >= 70
		return "C"
	elsif average >= 60
		return "D"
	else 
		return "F"
	end
end



# 3. Refactored Solution
# I don't know if this can be made any simpler with what I currently know.


# 4. Reflection - I made the huge mistake of trying to call the .each on get_grade instead of 
# grades for a good 15 minutes.  That was frustration.  I finally realized what I was doing
# and it passed all the tests right away.  It was a good learning experience and gives me
# something to remember to look for in the furture.  This exercise was almost easier to me in total
# then the easy exercise was.