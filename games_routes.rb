class GamesRoutes < WebApplicationCoreRoutes

enable :method_override

    helpers GameHelpers

    get '/' do
      find_games
      erb "game_views/games".to_sym
    end
    
    get '/new' do
      @game = Game.new
      erb "game_views/new_game".to_sym
    end
    
    get '/:id' do
      @game = find_game
      erb "game_views/show_game".to_sym
    end
    
    post '/' do
      game = create_game
      redirect to("/#{game.id}")
    end
    
    get '/:id/edit' do
      @game = find_game
      erb "game_views/edit_game".to_sym
    end
    
    put '/:id' do
      game = find_game
      game.update(params[:game])
      redirect to("/#{game.id}")
    end
    
    delete '/:id' do
      find_game.destroy
      redirect to('/')
    end

end
