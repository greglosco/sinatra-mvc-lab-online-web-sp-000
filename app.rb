require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    text = Piglatinizer.new
    @piglatintext = text.piglatinize(params[:input])
    
    erb :results
  end 
  
  
end