=begin
1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!
=end

require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
	brd.keys.select { |num| brd[num] == INITIAL_MARKER }

end

def player_places_piece(brd)
  square = ''
  loop do
    prompt "Choose a square(#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry, that's not a valid choice."
    end
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece(brd)
  square = ""
	if offense(brd)
		square = offense_square(brd)
	elsif defense(brd)
			square = defense_square(brd)
	else
		square = empty_squares(brd).sample
	end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def defense(brd)
	WINNING_LINES.each do |line|
		if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
			return true
		end
	end
	return false
end

def defense_square(brd)
	empty_key = ""
	WINNING_LINES.each do |line|
		if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
			empty_key = line.select{|num| brd[num] == INITIAL_MARKER}
		end
	end
	empty_key = empty_key[0]
end

def offense(brd)
	WINNING_LINES.each do |line|
		if brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
			return true
		end
	end
	return false
end

def offense_square(brd)
	empty_key = ""
	WINNING_LINES.each do |line|
		if brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
			empty_key = line.select{|num| brd[num] == INITIAL_MARKER}
		end
	end
	empty_key = empty_key[0]
end

def joinor(array, abbrev = "", abbrev2 = ';')
	last = array[-1].to_s
	array.pop()
	if abbrev == ''
		if array.size == 1
			return array[0] + "or" + last.to_s
		elsif array.size == 0
			return ""
		else
			return array.join(", ") + " or " + last
		end
	elsif abbrev == ';'
		return array.join("; ") + " or " + last

	elsif abbrev2 == 'and'
		return array.join(", ") + " and " + last
	end
end

def check_score(scr)
	if scr[1] == 5
		puts "Computer wins the game"
		return true
	elsif scr[0] == 5
		puts "You the player won the game"
		return true
	end
end

#start----------
score =[0,0]
loop do
  board = initialize_board
  loop do
    display_board(board)
    player_places_piece(board)
    computer_places_piece(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
		if detect_winner(board) == 'Computer'
			score[1] += 1
		elsif detect_winner(board) == 'Player'
			score[0] += 1
		end
  else
    prompt "It's a tie!"
		score[1] += 1
		score[0] += 1
  end

	prompt "Your score: #{score[0]}, Computer score: #{score[1]} "
	break if check_score(score)

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing tic tac toe! Good bye!"