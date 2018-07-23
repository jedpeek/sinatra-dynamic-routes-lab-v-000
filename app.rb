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
    @number, @phrase = params[:number], params[:phrase]
    @number.times puts "#{@phrase}"
  end



  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    "#{@num1.@operation @num2}"
  end


end
