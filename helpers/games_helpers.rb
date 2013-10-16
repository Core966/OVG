    module GameHelpers
      def find_games
        @games = Game.find_by_sql("SELECT * FROM games ORDER BY title ASC")
      end
      def find_game
        Game.get(params[:id].to_i)
      end
      def create_game
        @game = Game.create(:title => params[:title], :description => params[:description], :released_on => params[:released_on], :submitted_on => Time.now)
      end
      def update_game
	Game.get(params[:id].to_i).update(:title => params[:title], :description => params[:description], :released_on => params[:released_on])
      end
    end

#   find_by_sql("SELECT id, name FROM my_classes LIMIT 1", :properties => [:id, :name])
