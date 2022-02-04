

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
        @board.play_turn(@game.player1.user_name, @game.player1.value )
        @show.show_board(@board)
        if @board.victory?
         then  @game.end_game == true
         puts "#{@game.player1.user_name} a gagné !!"
         break
        end

        @board.play_turn(@game.player2.user_name, @game.player2.value)
        @show.show_board(@board)
        if @board.victory?
         then 
           @game.end_game == true
           puts "#{@game.player2.user_name} a gagné !!"
           break
        end


        
      end
     
    end
 
  end


  