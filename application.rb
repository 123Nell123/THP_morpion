

class Application


    def perform
      # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
      # initialise le jeu
      system "clear"

      @show = Show.new 
      @show.launch_title
      puts " "
      # @show.rules
      # @show.player_select
      puts " "
      @board = Board.new
      @show.show_board(@board)
  
      @game = Game.new


    # remplissage des joueurs
      while  @game.end_game == false
        @board.play_turn(@game.player1.user_name,@game.player1.value )
        @show.show_board(@board)
        if @board.victory?
         then  game.end_game == true
         puts "#{@show.player1.name} a gagné !!"
        end

        @board.play_turn(@game.player2)
        @board.show_board(@board)
        if @board.victory?
         then 
           game.end_game == true
           puts "#{@show.player2.name} a gagné !!"
        end


        
      end
      puts " MATCH NUL, c'est nul... rejoues !"
    end
 
  end


  