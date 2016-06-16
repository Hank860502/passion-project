get '/register' do


	erb :"/sessions/register"
end

post '/register' do
	@user = User.new(params[:user])
	
	if @user.save
		session[:user_id] = @user.id
		redirect '/'
	else
		erb :"/sessions/register"
	end
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
		@error = "Password or username is incorrect."
		erb :'/sessions/login'
	end
end

get '/logout' do
	current_user = nil
	session[:user_id] = nil
redirect '/login'

end



