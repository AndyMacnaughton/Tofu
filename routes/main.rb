# encoding: utf-8
class Tofu < Sinatra::Base

	get "/" do
		slim :login
	end

	get "/index" do
		@title = "Tofu"
		slim :index
	end
end
