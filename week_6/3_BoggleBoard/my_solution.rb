# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode
# => Create a BoggleBoard class
# => this class will include methods that will allow for you to pass in coordinates to access nested arrays
# => the output will be the string letters at the coordinates passed in as an argument, or a word definded by multiplte coordinates




# 3. Initial Solution
class BoggleBoard

	def initialize(board)
   		@board = board 
 	 end

	def create_word(*coords)
    	coords.map { |coord| @board[coord.first][coord.last]}.join("") 
	end
 
	def get_row(row)
		@board[row].join.to_s
	end
 
	def get_col(col)
		col = @board.map { |row| row[col] }
		col.join.to_s
	end

	def get_coord(coord)
		@board[coord.first][coord.last]
	end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution

class BoggleBoard

	def initialize(board)
   		@board = board 
 	 end

	def create_word(*coords)
    	coords.map { |coord| @board[coord.first][coord.last]}.join("") 
	end
 
	def get_row(row)
		@board[row].join.to_s
	end
 
	def get_col(col)
		@board.map { |row| row[col] }.join.to_s
	end

	def get_coord(coord)
		@board[coord.first][coord.last]
	end

end





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

puts boggle_board.get_coord([1,2])

# implement tests for each of the methods here:

boggle_board.create_word([1,2], [1,1], [2,1], [3,2])
puts boggle_board.get_row(0)
puts boggle_board.get_row(1)
puts boggle_board.get_row(2)
puts boggle_board.get_row(3)
puts boggle_board.get_col(0)
puts boggle_board.get_col(1)
puts boggle_board.get_col(2)
puts boggle_board.get_col(3)

puts boggle_board.get_coord([3,2])


def assert
	raise "Assertion failed" unless yield
end

assert{ boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock" }
assert{ boggle_board.get_coord([1,2]) == "d" }
assert{ boggle_board.get_row(1) == "iodt"}
assert{ boggle_board.get_col(1) == "roca"}
assert{ boggle_board.get_coord([3,2]) == "k"}

# 5. Reflection - this touchs upon my feelings when we were doing the boggle board exercise last week.  This type of exercise
# should always have been a class.  A preloaded board should have been fed in and assigned to an instance variable with
# instance methods that could manipulate it from there.  I love nested arrays and hashs, they allow for some fun results.
# There is a definite advantage in oop to the extent that if I had wanted to use multiple boards here, I could use the
# same class methods over and over again without having to rewrite them based off the new information being brought in.
# This could save a tremoundous amount of time.
#
# My only regret is that I had time to tackel the optional portion of this.. maybe I will come back when I can.