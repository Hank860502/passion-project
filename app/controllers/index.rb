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

post '/search' do
	@tour = Tour.find_by(tour_name: params[:search])
	@country = Country.find_by(country_name: params[:search])
	if @tour
		tour_id = @tour.id
		redirect "/tour/#{tour_id}"
	elsif @country
		country_id = @country.id
		redirect "/countries/#{country_id}"
	else
		session[:error] = "No matching result"
	end
end

get '/users/:id/wishlists' do
	@wishlists = current_user.wishlists
	@tours = current_user.tours.uniq
	@total = 0
	erb :'users/wishlists'
end

get '/users/:id/wishlist/:tour_id' do
	if request.xhr?
		@wishlists = Wishlist.create(user_id: 	current_user.id, tour_id: params[:tour_id]	)
		@tours = current_user.tours.uniq
		@total = 0
		return
	else
		@wishlists = Wishlist.create(user_id: 	current_user.id, tour_id: params[:tour_id]	)
		@tours = current_user.tours.uniq
		@total = 0
		erb :'/users/wishlists'
	end
end


get '/purchase/:id' do
	@tour = Tour.find(params[:id])
	@data = params
	@total = @data["quantity"].to_i*@tour.price
	p @total
	erb :'/tour/purchase'
end