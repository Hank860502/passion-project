get '/register' do


	erb :"/sessions/register"
end

post '/register' do
	@user = User.new(first_name: params[:first_name],last_name: params[:last_name],user_name: params[:user_name],image: params[:image])
	@user.password = params[:password]
	@user.save
	session[:user_id] = @user.id

	redirect "/countries"
end

get '/login' do

	erb :"/sessions/login"
end

post '/login' do
	p params[:user_name]
	password = params[:password]
	user = User.find_by(user_name: params[:user_name])
p user
	if user && user.authenticate(password)
		session[:user_id] = user.id
		redirect "/countries"
	else
		redirect '/login'
	end
end

get '/logout' do

session.clear
redirect '/login'

end



