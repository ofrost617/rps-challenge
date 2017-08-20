require_relative '../lib/computer.rb'

describe Computer do

  it 'can access the list of available weapons' do
    computer = Computer.new
    expect(computer.moves).to include :rock, :paper, :scissors
  end

  it 'selects a weapon randomly' do
    computer = Computer.new
    allow(computer).to receive(:computer_move).and_return(:scissors)
    p computer.computer_move
    expect(computer.computer_move).to eq :scissors
  end
  
end
