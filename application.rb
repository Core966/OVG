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

def current?(path='/') #This will return the path of the page that’s currently being visited, relative to the root URL
  (request.path==path || request.path==path+'/') ? "pure-menu-selected" : nil
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
	  @games = @games.sort.reverse
	  erb :home
	end

	get '/about/?' do
	  erb :about
	end

end

require File.join(File.dirname(__FILE__), 'games_routes.rb')
