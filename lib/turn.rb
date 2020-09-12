def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.chomp
    index = input_to_index(user_input)
    if !valid_move?(board, index)
      turn(board)
    else
      move(board, index, current_player(board))
    end
    display_board(board)
end

def turn_count(board)
  # counts occupied positions
  count = 0
  board.each do |index|
    if index != " "
      count += 1
    end
  end
    count
 end
