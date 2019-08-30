class ApplicationController < Sinatra::Base
  set :views, "./app/views"

  get '/' do
    erb :index
  end

  post '/new' do 
  	@user = User.create({
  		name: params[:name]
  	})
  	user_id = @user.id
  	@list = List.create({
  		user_id: user_id,
  		item_name: params[:item_name],
  		item_quantity: params[:quantity]
  	})
  	redirect '/new'
  	erb :new
  end

  get '/new' do
  	erb :new
  	
  end

  get '/list/:id/edit' do
  	@list = List.find_by_id(params[:id])
  	
  	erb :new
  end


  patch '/list/:id' do
   	@list = List.find_by_id(params[:id])
   	@list.save
   	redirect 'new'
  end

  # post '/list' do
  # 	redirect '/new'
  # end

end