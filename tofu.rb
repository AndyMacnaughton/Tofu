# Tofu.rb
require 'sinatra'
require 'slim'
require 'scrypt'

class Tofu < Sinatra::Base
  enable :sessions

  userTable = {}

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html

    def login?
      if session[:username].nil?
        return false
      else
        return true
      end
    end

    def username
      return session[:username]
    end
  end

end

#require_relative 'helpers/init'
#require_relative 'models/init'
require_relative 'routes/main'
