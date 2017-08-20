require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/computer.rb'

describe Game do

  # subject(:game) {described_class.new("Oivia", "Computer")}
  # let(:Computer) {double :Computer}
  # let(:player1) {double(:player1, name: "Olivia")}
  # let(:player2) {double :player2}

  it 'is initialized with a player' do
    game = Game.new("Olivia", "Computer")
    expect(game.player).to eq("Olivia")
  end
  
  it 'is initialized with a computer as a player' do
    game = Game.new("Olivia", "Computer")
    expect(game.computer).to eq("Computer")
  end

  it 'if player choice is same as computer move there is no winner' do
    game = Game.new("Olivia", "Computer")
    player = Player.new("Olivia")
    computer = Computer.new
    allow(player).to receive(:select).and_return(:rock)
    allow(computer).to receive(:computer_move).and_return(:rock)
    p player.choice
    expect(game.winner(player, computer)).to eq :no_winner
  end

  # it 'player wins' do
  #   game = Game.new("Olivia", "Computer")
  #   player = Player.new("Olivia")
  #   computer = Computer.new
  #   allow(player).to receive(:select).and_return(:rock)
  #   allow(computer).to receive(:computer_move).and_return(:scissors)
  #   expect(game.winner(player, computer)).to eq player.name
  # end


#  it 'can choose correct winner' do
#     game = Game.new("Olivia", "Computer")
#     player = Player.new("Olivia")
#     computer = Computer.new
#     allow(player).to receive(:select).and_return(:rock)
#     allow(computer).to receive(:computer_move).and_return(:scissors)
#     expect(game.winner(player, computer)).to eq 'Olivia'
#   end


  
  # it 'player wins' do
  #   game = Game.new("player", "computer")
  #   player = Player.new("Olivia")
  #   computer = Computer.new
  #   player.select("rock")
  #   allow(computer).to receive(:computer_move).and_return(:scissors)
  #   p player.choice
  #   p computer.computer_move
  #   expect(game.winner).to eq "Olivia"
  # end

  # it 'can choose correct winner' do
  #   game = Game.new("Olivia", "Computer")
  #   expect(game.winner("rock", "scissors")).to eq 'Olivia'
  # end

  # # it 'can choose correct winner' do
  # #   game = Game.new("Olivia", "Computer")
  # #   expect(game.winner("scissors", "paper")).to eq 'Olivia'
  # # end

  # # it 'can choose correct winner' do
  # #   game = Game.new("Olivia", "Computer")
  # #   expect(game.winner(":paper", "rock")).to eq 'Olivia'
  # # end

  # it 'returns no winner if the game is a draw' do
  #   game = Game.new("Olivia", "Computer")
  #   expect(game.winner("paper", "paper")).to eq :no_winner
  # end
  
end