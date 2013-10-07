    module GameHelpers
      def find_games
        @games = Game.all(:order => [ :title.asc ])
      end
      def find_game
        Game.get(params[:id].to_i)
      end
      def create_game
        @game = Game.create(:title => params[:title], :description => params[:description], :released_on => params[:released_on], :submitted_on => Time.now)
      end
    end
