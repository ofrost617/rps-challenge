require_relative './player'
require_relative './computer'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  WINNING_COMBOS = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  attr_reader :computer, :player, :winner

  def initialize(player = Player.new, computer = Computer.new)
    @computer = computer
    @player = player
    @winner = nil
  end

  # def winner
  #   WINNING_COMBOS[player.select()][computer.move] ? :win : :lose
  # end


  def winner(player, computer)
    p1 = player.choice
    p2 = computer.move
    if p1==p2 
      @winner = :no_winner
    elsif p1 == :rock
      if p2 == :scissors
        @winner = player.name
      else
        @winner = computer.name
      end
    elsif
      p1 == :paper
      if p2 == :rock
        @winner = player.name
      else
        @winner = computer.name
      end
    else
      if p2 == :paper
        @winner = player.name
      else
        @winner - computer.name
      end
    end
  end
      
  

  # def winnner(player, computer)
  #   p1 = player.choice
  #   p2 = computer.move
  #   return @winner = :no_winner if p1 == p2
  #   if WINNING_COMBOS[p1].include?(p2)
  #     @winner = player.name
  #   else
  #     @winner = computer.name
  #   end
  #  end

  # def winner(player, computer)
  #   # p1 = p1.to_sym
  #   # p p1
  #   # p2 = p2.to_sym
  #   p1 = player.choice
  #   p2 = computer.move
  #   return @winner = :no_winner if p1 == p2
  #   if WINNING_COMBOS[p1].include?(p2)
  #     @winner = player
  #   else
  #     @winner = computer
  #   end
  # end

  # def winner(p1,p2)
  #   p1 = p1.to_s
  #   p2 = p2.to_s
  #   return @winner = :NO_WINNER if p1 == p2
  #   WINNING_COMBOS[p1].include?(p2) ? @winner = player.name : @winner = computer.name
  # end

end
