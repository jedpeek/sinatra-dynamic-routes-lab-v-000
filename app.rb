require_relative 'config/environment'

class App < Sinatra::Base

  get "/reverse/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:num" do
    @num = params[:num]
    @num.square
  end

end
