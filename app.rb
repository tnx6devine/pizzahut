require "sinatra"


get '/'  do
	redirect '/names'
end

get '/names' do
	erb :names 
end

post '/list' do
	names_provided = params[:names_provided]
	names_provided.each do |name|
		puts name
	end
end