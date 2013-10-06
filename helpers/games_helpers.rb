    module GameHelpers
      def find_games
        @games = Game.all
      end
      def find_game
        Game.get(params[:id].to_i)
      end
      def create_game
        @game = Game.create(params[:game])
      end
    end
