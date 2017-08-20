require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPSWeb < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/ready' do
    @name = params[:player]
    erb(:ready)
  end

  get '/result' do
    @winner
    erb(:result)
  end

  run! if app_file == $PROGRAM_NAME
end
