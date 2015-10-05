require './player'
require './gameboard'

require 'pry'
require 'minitest/autorun'

class GameBoard
  def initialize
  @board = (0..8).to_a
end

def show_board
  puts "
      -----------
     | #{@board[0]} | #{@board[1]} | #{@board[2]} |
     | #{@board[3]} | #{@board[4]} | #{@board[5]} |
     | #{@board[6]} | #{@board[7]} | #{@board[8]} |
      -----------
  "
end
  def add_marker(choice, marker)
    @board[choice] = marker
  end

  def  get_board
    @board
  end

  def available_moves
    @board.reject { |x| x.is_a?(String) }
  end
end
