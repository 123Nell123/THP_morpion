class Show

  def launch_title
    puts "bienvenu dans le jeu"
  end


    def show_board(board)
      @affichage = board.grid.values

      puts "#{@affichage.each_slice(3){|obj| p obj}}"
     
    end
  
    def show(name)
      puts "#{name}"
    end

  end