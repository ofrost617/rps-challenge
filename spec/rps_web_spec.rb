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
    expect(page).to have_content "Hello Olivia, let's play rock paper scissors!"
  end
  
end