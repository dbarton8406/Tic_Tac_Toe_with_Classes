require "minitest/autorun"
require "./human"
require "./game"
require "./board"


class HumanPlayerTest < MiniTest::Test
  def setup
    until  board.available_moves.include?(move)
      puts "#{move} isn't an available space. Choose again: "
     end
  end
    def board.available_moves
    assert board.avaliable_moves.include?(9)
    end
end


class GameTest < MiniTest::Test

end


class Gameboard < MiniTest::Test

end
