class Player
    #la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_accessor :value, :user_name

    def initialize(user_name, value)
        #doit régler son nom et sa valeur
        @user_name = user_name
        @value = value
      end




end