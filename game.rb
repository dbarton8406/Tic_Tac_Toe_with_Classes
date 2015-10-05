require './player.rb'
require './gameboard.rb'

require 'pry'
require 'minitest/autorun'

WINS = [[0,1,2], [3,4,5], [6,7,8],
        [0,3,6], [1,4,7], [2,5,8],
        [0,4,8], [2,4,6]]
class Game
  def initialize
    @current_player = nil
    @board = GameBoard.new
    @playerX = HumanPlayer.new("X")
    @playerO = HumanPlayer.new("O")
  end


def switch_player(player)
  player == @playerX ? @playerO : @playerX
end

  def win?(board)
    WINS.any? do |x, y, z|
      board[x] == board[y] && board[y] == board[z]
    end
  end

  def draw?(board)
    board.available_moves.empty?
  end


def game_over?(board)
  win?(board.get_board) || draw?(board)
end

def tic_tac_toe
  @current_player = @playerX
  until game_over?(@board)
    move = @current_player.take_turn(@board)
    @board.add_marker(move,@current_player.get_marker )
   @current_player = switch_player(@current_player)
  end
  the_end(@current_player, @board)
end

def the_end(player, board)
  board.show_board
  if win?(board.get_board)
    puts "someone her is just plain stupid. #{switch_player(player).get_marker} Its not you!"
  else
    puts "this Game sucks!! can we stop playing it?"
  end
 end
end

play = Game.new
play.tic_tac_toe
