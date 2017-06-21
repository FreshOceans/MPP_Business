# ======= requires =======
require "sinatra"
require 'sinatra/activerecord'
require "sinatra/reloader" if development?

# ======= database =======
# set :database, "sqlite3:portfolio.db"  # sets the db name (will be created if it does not exist)

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
# ======= signup form =======
get '/signup_form' do
	puts "\n******* signup *******"
	erb :signup_form
end
# ====== signup ======
post '/signup' do
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
