# Tofu.rb
require 'sinatra'
require 'sass'
require 'slim'

class Tofu < Sinatra::Base
  enable :sessions

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end

end

#require_relative 'helpers/init'
#require_relative 'models/init'
require_relative 'routes/main'
