get '/' do
	if session[:user_id]
		redirect '/countries'
	else
		redirect '/register'
	end
end

get '/countries' do
	@countries = Country.all
  erb :'/country/countries'
  end

get '/countries/:id' do
	@country = Country.find(params[:id])
	@tours = @country.tours

	erb :'/country/tours'
end

get '/tour/:id' do
	@tour = Tour.find(params[:id])
	erb :'/country/tour'
end

get '/users/:id/wishlists' do
	user = User.find(params[:id])
	@wishlists = user.wishlists
	erb :'users/wishlists'
end

get '/users/:id/wishlist/:tour_id' do
	@wishlists = Wishlist.create(user_id: params[:id], tour_id: params[:tour_id])
	@user = User.find(session[:user_id])
	@total = 0
	erb :'users/wishlists'
end

get '/api' do

end
