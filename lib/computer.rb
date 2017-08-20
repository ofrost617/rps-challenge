require_relative './game.rb'

class Computer

  attr_reader :moves, :move, :name

  def initialize
    @moves = Game::WEAPONS
    @name = 'Computer'
  end
  
  def computer_move
    @move = @moves.sample
  end
  
end
