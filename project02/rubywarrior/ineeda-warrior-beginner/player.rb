class Player
  def play_turn(warrior)
    # add your code here - Will DO! **Alyse Haynes**
	
	if warrior.feel.empty? and warrior.health < 20
		warrior.rest!
		
	elsif warrior.feel.empty? and warrior.health >= 20
		warrior.walk!
	
	elsif
		warrior.attack!
	end # end 'if' statement
  
  end # end play_turn 
end #end class Player
