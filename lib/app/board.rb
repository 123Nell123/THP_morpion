class Board
    # la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    attr_accessor :grid, :count_turn
  
    def initialize
      
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
      a1 = BoardCase.new("A1"," ")
      a2 = BoardCase.new("A2"," ")
      a3 = BoardCase.new("A3"," ")
      b1 = BoardCase.new("B1"," ")
      b2 = BoardCase.new("B2"," ")
      b3 = BoardCase.new("B3"," ")
      c1 = BoardCase.new("C1"," ")
      c2 = BoardCase.new("C2"," ")
      c3 = BoardCase.new("C3"," ")
      @grid = {a1.case_id => a1.value, a2.case_id => a2.value, a3.case_id => a3.value, b1.case_id => b1.value, b2.case_id => b2.value, b3.case_id => b3.value, b3.case_id => b3.value, c1.case_id => c1.value, c2.case_id => c2.value, c3.case_id => c3.value,}
      @count_turn = 0
    end
  



    def play_turn(player_user_name, player_value)
      #une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
      puts "tour de #{player_user_name}"
      puts "Quelle case restante veux-tu jouer ?"
      print ">"
      choise = gets.chomp
      @grid[choise]= "#{player_value}"
      @count_turn = @count_turn + 1
    end
  
    def victory?
      #une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      if @count_turn < 9
        if (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["A2"] && @grid["A1"] == @grid["A3"]
          puts " Bravo ! Vous avez gagné :=)"
          return true

        elsif (@grid["B1"].include?(" ") == false) && @grid["B1"] == @grid["B2"] && @grid["B1"] == @grid["B3"]
          puts " Bravo ! Vous avez gagné :=)"
          return true

        elsif (@grid["C1"].include?(" ") == false) && @grid["C1"] == @grid["C2"] && @grid["C1"] == @grid["C3"]
          puts " Bravo ! Vous avez gagné :=)"
          return true

        elsif (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["B1"] && @grid["A1"] == @grid["C1"]
          puts " Bravo ! Vous avez gagné :=)"
          return true

        elsif (@grid["A2"].include?(" ") == false) && @grid["A2"] == @grid["B2"] && @grid["A2"] == @grid["C2"]
          puts "Bravo ! Vous avez gagné :=)"
          return true

        elsif (@grid["A3"].include?(" ") == false) && @grid["A3"] == @grid["B3"] && @grid["A3"] == @grid["C3"]
          puts "Bravo ! Vous avez gagné :=)"
          return true

        elsif (@grid["A3"].include?(" ") == false) && @grid["C1"] == @grid["B2"] && @grid["B2"] == @grid["A3"]
          puts "Bravo ! Vous avez gagné :=)"
          return true

        elsif (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["B2"] && @grid["B2"] == @grid["C3"]
          puts "Bravo ! Vous avez gagné :=)"
          return true
        end
      else
        puts "Dommage, vous avez perdue la partie :=("
      end
    end

end