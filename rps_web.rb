require 'sinatra/base'
require './lib/player.rb'

class RPSWeb < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/ready' do
    @name = params[:player]
    erb(:ready)
  end

  run! if app_file == $PROGRAM_NAME
end
