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
	# @images_id = []
	# @tours.each do |tour|
	# 	 @images_id << tour.image_id
	# end
	# images = Image.find
	erb :'/country/tour'
end