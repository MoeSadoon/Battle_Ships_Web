require 'sinatra/base' #controller

class BattleshipsWeb < Sinatra::Base
  set :views, proc { File.join(root, 'views') }

  get '/' do
    erb :index
  end

  get '/new_game' do
    @name = params[:name]
    erb :new_game
  end

  # post '/board' do
  #   session[:name] = params[:name]
  #   @name = session[:name]
  #   # @board = Board.new
  #   erb :board
  # end
  # start the server if ruby file executed directly
  run! if app_file == $0
end