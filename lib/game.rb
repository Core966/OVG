class Game
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :description, Text
  property :image_link, String
  property :released_on, Date
  property :submitted_on, Date
  property :user_id, Integer
  
  belongs_to :user
  
end

