require "sinatra"


get '/'  do
	redirect '/orders'
end

get '/orders' do
	erb :orders
end

post '/contact' do
	contact = params[:contact]
	address = params[:address]
	phone = params[:phone]
	# puts "We will contact #{contact} at #{phone} from our location nearest #{address}. LINE 20"
	redirect '/confirm?contact=' + contact + '&address=' + address + '&phone=' + phone
		
	end

get '/confirm' do
	contact = params[:contact]
	address = params[:address]
	phone = params[:phone]
	# puts "We will contact #{contact} at #{phone} from our location nearest #{address}. LINE 28"
	erb :confirm, :locals => {:contact => contact, :address => address, :phone => phone}
	
end
