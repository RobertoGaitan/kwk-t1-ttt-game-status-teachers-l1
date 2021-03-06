# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def won?(board)
  WIN_COMBINATIONS.each do |position_1, position_2, position_3|
      if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X"
        return [position_1, position_2, position_3]
        break
      end
      if board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
          return [position_1, position_2, position_3]
          break
      end
  end
  return false
end

def full?(board)
  board.each do |token|
    if token == " " || token == ""
       return false
       break
     end
 end
return true
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    winning_token = won?(board)
    winner = board[winning_token[0]]
    return winner
  end
end
