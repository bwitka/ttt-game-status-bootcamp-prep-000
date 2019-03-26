# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Lower row
  [0,3,6], # First column
  [1,4,7], # Second column
  [2,5,8], # Third column
  [0,4,8], # top-left to bottom-right diagonal
  [2,4,6]  # top-right to bottom-left diagonal
]

def won?(board) 
  WIN_COMBINATIONS.each do |win_combination| 
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" || board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      return win_combination # return winning combo.
    end 
  end 
    return false # return false if there is no win combo present in board.
end

def full?(board)
  board.all? { |element| element != " " }
end

def draw?(board)
  if full?(baord) && !won?(board)
    return true 
  elsif !won?(board) && !full?(baord) || won?(board)
    return false 
  end
end

def over?(board)
end

def winner(board)
end

