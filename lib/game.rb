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
  
#  def released_on=date
#    super Date.strptime(date, '%m/%d/%Y') #Converts the string entered in the form to be formatted to a date
#  end
end

