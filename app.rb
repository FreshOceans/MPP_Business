# ======= requires =======
require "sinatra"
require 'sinatra/activerecord'
require "sinatra/reloader" if development?
require "sass"

# ======= database =======
# set :database, "sqlite3:portfolio.db"  # sets the db name (will be created if it does not exist)

# ===== five users =====
def make_user_data
	@@user_array: []
	text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	formatted_text = text.split
	puts formatted_text

end
make_user_data


# ======= home =======
get '/' do
	puts "\n******* home *******"
	erb :home
end
# ======= home =======
# get '/home' do
# 	puts "\n******* home *******"
# 	erb :home
# end
# ======= register form =======
get '/register_form' do
	puts "\n******* register *******"
	erb :register_form
end
# ====== register ======
post '/register' do
    puts "params: #{params.inspect}"
    @username = params[:username]
    @password = params[:password]
    @email = params[:email]
    @dob = params[:dob]
    erb :profile
end
# ===== profile =====
get '/profile' do
	puts "\n******* profile *******"
	erb :profile
end
