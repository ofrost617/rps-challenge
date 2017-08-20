require_relative '../lib/player.rb'

describe Player do

  it 'is initialized with a player name' do
    player = Player.new("Olivia")
    expect(player.name).to eq("Olivia")
  end

  it 'can choose rock, paper or scissors' do
    player = Player.new("Olivia")
    player.select("rock")
    expect(player.choice).to eq "rock"
  end

  it 'raises error when weapon chosen is not available' do
    player = Player.new("Olivia")
    expect{player.select("knife")}.to raise_error "Not a possible weapon"
  end

end
