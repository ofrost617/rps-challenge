require_relative '../rps_web.rb'

feature RPSWeb do

  scenario 'first page asks for player name' do
    visit('/')
    expect(page).to have_content 'Enter player name'
  end
  
  scenario 'name can be filled in and appears as content' do
    visit('/')
    fill_in('player', :with => 'Olivia')
    click_button('Submit')
    expect(page).to have_content "Hello Olivia"
  end

  scenario 'gives marketeer choice of rock, paper or scissors' do
    visit('/')
    fill_in('player', :with => 'Olivia')
    click_button('Submit')
    expect(page).to have_button("Rock")
  end

  scenario 'gives marketeer choice of rock, paper or scissors' do
    visit('/')
    fill_in('player', :with => 'Olivia')
    click_button('Submit')
    expect(page).to have_button("Paper")
  end

  scenario 'gives marketeer choice of rock, paper or scissors' do
    visit('/')
    fill_in('player', :with => 'Olivia')
    click_button('Submit')
    expect(page).to have_button("Scissors")
  end
  
  
end
