

class User
  include DataMapper::Resource
  include BCrypt
  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :username, String
  property :password, BCryptHash
  property :email, String
  has n, :games
    
  def authenticate(attempted_password)
    if self.password == attempted_password
      true
    else
      false
    end
  end
end

