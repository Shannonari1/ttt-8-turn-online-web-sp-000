def turn(board)
    puts "Please enter 1-9:"
    answer = gets.chomp
    answer = input_to_index(answer)
    if valid_move?(answer, board)
      move(board, answer)
      puts display_board(board)
    else
      puts "That is an invalid entry!"
      turn(board)
    end 
end