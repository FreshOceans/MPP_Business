# ======= requires =======
require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader" if development?
require "sass"

# ======= models ======
require './models'

# ======= database =======
set :database, "sqlite3:minimal_db.db"

# ===== Class variable =====
# @@user_array = []

# ===== five users =====
# def make_user_data
# 	text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
# 	text_array = text.gsub(/[.,]/, '').split
# 	(0..4).each do |i|
# 		user_data = {}
# 		user_data[:id] = i + 1
# 		j = i * 5
# 		text_array[j]
# 		user_data[:username] = text_array[j]
# 		user_data[:password] = text_array[j+1]
# 		user_data[:fname] = text_array[j+2]
# 		user_data[:lname] = text_array[j+3]
# 		user_data[:email] = text_array[j+4]
# 		@@user_array << user_data
# 	end
# 	puts "** @@user_array: #{@@user_array}"
# end
# make_user_data

# ======= home =======
get '/' do
	puts "\n******* home *******"
	erb :home
end

# ======= Register Form =======
get '/register_form' do
	puts "\n******* register_form *******"
	erb :register_form
end
# ====== Register ======
post '/register' do
    puts "params: #{params.inspect}"
	User.create(
		username: params[:username],
		password: params[:password],
		fname: params[:fname],
		lname: params[:lname],
		email: params[:email],
		usertype: params[:usertype]
	)
	@user = User.find(1)
	puts "@user:, #{@user}"
	redirect '/profile'
end

# ===== Profile =====
get '/profile' do
	puts "\n******* profile *******"
	erb :profile
end
# ===== About Us =====
get '/About Us' do
	puts "\n******* About Us *******"
	erb :about_us
end
# ===== Products =====
get '/Products' do
	puts "\n******* Products *******"
	erb :products
end
# ===== Directory =====
get '/Directory' do
	puts "\n******* Directory *******"
	erb :directory
end
# ===== Tools =====
get '/Tools' do
	puts "\n******* Tools *******"
	erb :tools
end
