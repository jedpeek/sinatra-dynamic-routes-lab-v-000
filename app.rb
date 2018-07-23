require_relative 'config/environment'

class App < Sinatra::Base

  get "/reverse/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:num" do
    @num = params[:num].to_i
    Math.sqrt(@num).to_s
  end

  get '/say/:number/:phrase' do
    @number, @phrase = params[:number].to_i, params[:phrase]
     answer = ''
    @number.times do
      answer += @phrase
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i

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




end
