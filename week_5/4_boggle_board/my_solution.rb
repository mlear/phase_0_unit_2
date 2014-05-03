# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# => pass a "board" and coordiantes in the board to spell out words
# => define a method that 2 arguments, one that represents the board and and an indefinite ammount of coordinates

# Initial Solution

 def create_word(board, *coords) # this is defining the method that will accept a board argument, and an indefinite (splat) amount of arguments.
    coords.map { |coord| board[coord.first][coord.last]}.join("") # this will create a new array composed of the values in the board (nested array).  coord.first points to the index, or row, of the nested array and coord.last points at the index value of the nested array, or column.) 
 end

# Refactored Solution

# Never knew about the splat before this, it will certainly come in handy.

# DRIVER TESTS GO BELOW THIS LINE

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> returns "rad"

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# => define a method that will accept an argument that represents the index number of the inital array in boggle_board
# => this will return the full row that is called upon.

# Initial Solution
def get_row(board, row)
	board[row]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 1) == ["i", "o", "d", "t"]

# Reflection 

# I'm not sure why we didn't create this in a class from the start?  I can't call on boggle_board inside the method
# (at least I don't know how to) unless I redifine it within that method.  I guess I could redifine the boggle_board to
# be a global variable, but that doesn't seem to be in the spirit of the exercise.  I feel like I am missing something here though,
# why just call the single argument?  Why wouldn't we define the method to pass in two arguments, the board and the line number
# so that don't have to redefine the array?  I'm going to do that, as I think it's the better approach, even though the
# instructions state to have 1 argument.

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# => i'm again going to set this to 2 variables to make use of the array provided
# => the method will take the arguments and map an array by passing an array and the index of the nested array you want to use.

# Initial Solution

def get_col(board, col)
	board.map { |x| x[col] }
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_col(boggle_board, 1) == ["r", "o", "c", "a"]

# Reflection 

# Again, I think this works a lot cleaner when you can pass in the two arguements instead of 1, otherwise you would have
# to redefine the array inside the method, or use a global variable for the array.