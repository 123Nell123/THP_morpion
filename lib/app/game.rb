class Game
    # la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :end_game, :player1, :player2

    def initialize
      # créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
      @end_game = false
      @board = Board.new

      # @display = Display.new(@board) #a revoir
      # @display.start_game()   #a revoir
      # @display.ask_name_player(1)  #a revoir

      puts "nom du joueur1"
      user_name = gets.chomp
      @player1 = Player.new(user_name, "x")
      
      # @display.ask_name_player(2)

      puts "nom du joueur2"
      user_name = gets.chomp
      @player2 = Player.new(user_name, "o")
    end
  
    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    end
  
    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    end
  
    def game_end
      # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    end    
  
  end