require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'data_mapper'
require 'bcrypt'


class WebApplicationSettings < Sinatra::Base

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

before do
  @title = "OVG"
  @author = "Tibor Szalay"
end

#error do
#  e = request.env['sinatra.error']
#  Kernel.puts e.backtrace.join("\n")
#  'Application error'
#end

#helpers do
  # add your helpers here
#end


end

require File.join(File.dirname(__FILE__), 'environment.rb')

class WebApplicationCoreRoutes < DataModel

	# root page
	get '/' do
	  erb :root
	end

	get '/home/?' do
	  @games = Game.all
	  erb :home
	end

	get '/games/?' do
	  @games = Game.all
	  erb :games
	end

	get '/about/?' do
	  erb :about
	end

end
