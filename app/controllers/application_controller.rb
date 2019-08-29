class ApplicationController < Sinatra::Base
  set :views, "./app/views"

  get '/' do
    erb :index
  end

  post '/new' do
  	user = User.create({
  		name: params[:name]
  	})
  	erb :new
  end

end