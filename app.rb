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
    @number = param[:number].to_i
     @phrase = params[:number].to_i, params[:phrase]
    @number.times puts "#{@phrase}"
  end




end
