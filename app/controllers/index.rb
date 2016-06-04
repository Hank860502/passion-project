get '/' do
	if session[:user_id]
		redirect '/users/tweets'
	else
		redirect '/register'
	end
end

get '/users/tweets' do
  erb :'/users/tweets'
  end
