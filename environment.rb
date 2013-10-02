

class DataModel < WebApplicationSettings

  #Database settings

  #DataMapper.setup(:default, "mysql://someuser:somepass@localhost/test_db")
  
    configure :development do
      DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
    end
    configure :production do
      DataMapper.setup(:default, ENV['DATABASE_URL'])
      #DataMapper.setup(:default, "mysql://someuser:somepass@localhost/test")
    end

  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }

  DataMapper.finalize

if User.count == 0
      @user = User.create(first_name: nil, last_name: nil, username: "admin", password: "admin", email: nil)
      @user.save
end

if Game.count == 0
      @game = Game.create(title: "Default title", description: "Lorem ipsum sed aliquam.", image_link: nil, released_on: Time.now, submitted_on: Time.now)
      @game.save
end

end
