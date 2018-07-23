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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1, @w2, @w3, @w4, @w5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@w1 @w2 @w3 @w4 @w5}"


end
