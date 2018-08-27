def turn(board)
  puts "Please enter 1-9:"
  index = gets
  index -= 1
  if valid_move?(board, index)
    move(board, index, token)
  else
    puts "Invalid input. Please enter 1-9"
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index < 9 && !(board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end
