===> ### OVG ### <===

Just a test site to keep my programming skills intact.

This application is built on the template (c) by Nick Plante in 2011. Which is distributed under the MIT license also included.

Reworked the template in a modular style (which is still in progress in making).

Testing will be left intact, although not used in this project.

Haml templates will be changed to erb for better readability.

In order to initialize the application:

  bundle install
  rake db:migrate (The commenting out of the following lines might be necessary:
	if User.count == 0
	      @user = User.create(first_name: nil, last_name: nil, username: "admin", password: "admin", email: nil)
	      @user.save
	end

	if Game.count == 0
	      @game = Game.create(title: "Default title", description: "Lorem ipsum sed aliquam.", image_link: nil, released_on: Time.now, submitted_on: Time.now)
	      @game.save
	end
  following that the lines can be uncommented and rake db:upgrade must be run.
)

Finally, to run the app locally:
  rackup ( and also adding "-p $PORT -o $IP" in case of C9.io)

Special thanks to the following contributors of the sinatra template and to Nick Plante:

  * garrensmith
  * bryanwoods
  * flexd
  * mcollina


