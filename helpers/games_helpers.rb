    module GameHelpers
      
        def find_games
          @games = Game.find_by_sql("SELECT * FROM games ORDER BY title ASC")
        end
        def find_game
          Game.find_by_sql("SELECT id, title, released_on, description FROM games WHERE id =" + params[:id])
        end
        def create_game
          adapter = DataMapper.repository(:default).adapter
	  released_on_converted = Date.strptime(params[:released_on], '%m/%d/%Y')
          @game = adapter.execute("INSERT INTO games (title, description, released_on, submitted_on) VALUES (?, ?, ?, ?)", params[:title], params[:description], released_on_converted, Time.now)
#Game.create(:title => params[:title], :description => params[:description], :released_on => params[:released_on], :submitted_on => Time.now)
        end
        def update_game
	  Game.get(params[:id].to_i).update(:title => params[:title], :description => params[:description], :released_on => params[:released_on])
        end
    end

#   find_by_sql("SELECT id, name FROM my_classes LIMIT 1", :properties => [:id, :name])

