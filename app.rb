require_relative 'config/environment'

class App < Sinatra::Base

  get "/reverse/:name"
  @name = params[:name]
  @name.reverse

end
