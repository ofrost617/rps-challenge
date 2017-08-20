require_relative './game.rb'

class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end
  
  def select(choice)
    raise 'Not a possible weapon' unless Game::WEAPONS.include? choice.to_sym
    @choice = choice.to_sym
  end
   
end

