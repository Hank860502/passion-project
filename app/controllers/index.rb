get '/' do
		redirect '/countries'
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
	if session[:user_id]
		@tour = Tour.find(params[:id])
		erb :'/country/tour'
	else
		@tour = Tour.find(params[:id])
		erb :'/guest/tour'
	end
end

get '/users/:id/wishlists' do
	@wishlists = @user.wishlists
	@tours = current_user.tours.uniq
	@total = 0
	erb :'users/wishlists'
end

get '/users/:id/wishlist/:tour_id' do
	@wishlists = Wishlist.create(user_id: current_user, tour_id: params[:tour_id])
	@tours = current_user.tours.uniq
	@total = 0
	erb :'users/wishlists'
end

get '/search' do
	redirect '/tour/3'
end