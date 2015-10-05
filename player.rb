require './player'
require './gameboard'

require 'pry'
require 'minitest/autorun'

class HumanPlayer
def initialize(marker)
  @marker= marker
end

def take_turn(board)
    board.show_board
    puts "Player #{@marker}, please choose a numbered space on the board: "
    move = gets.chomp.to_i
 #Gameboard is the object from which board
    until  board.available_moves.include?(move)
      puts "#{move} isn't an available space. Choose again: "
      move = gets.chomp.to_i
    end
    move
  end
  def get_marker
    @marker
  end
  def add_marker(choice)
    @choice = choice
  end

end
