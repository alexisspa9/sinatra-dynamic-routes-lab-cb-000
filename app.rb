require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  get 'square/:number' do
    @number = params[:number].to_i
    
  end
  get '/say/:number/:phrase' do
    @n  = params[:number].to_i
    @p = params[:phrase]
    @n.times do
      
    end
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end
  get '/:operation/:number1/:number2' do

  end
end
