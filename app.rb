require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  get '/square/:number' do
    (params[:number].to_i ** 2).to_s

  end
  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
"#{@words[0]} #{@words[1]} #{@words[2]} #{@words[3]} #{@words[4]} "
  end
  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end
end
