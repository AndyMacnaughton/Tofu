# encoding: utf-8
class Tofu < Sinatra::Base
	get "/" do
		@title = "Welcome to Tofu"
		slim :index
	end
end
