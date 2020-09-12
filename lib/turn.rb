
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
