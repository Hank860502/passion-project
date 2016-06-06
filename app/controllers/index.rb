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
	
	erb :'/country/tour'
end