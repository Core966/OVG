require 'sinatra/base'

require File.join(File.dirname(__FILE__), 'application.rb')

#FileUtils.mkdir_p 'log' unless File.exists?('log')
#log = File.new("log/sinatra.log", "a+")
#$stdout.reopen(log)
#$stderr.reopen(log)

map('/games') { run GamesRoutes }
map('/') { run WebApplicationCoreRoutes }
