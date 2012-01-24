class Player
	@@prev_health = 20
	
  def play_turn(warrior)
    # add your code here - Will DO! **Alyse Haynes**
	 
	 
	if(@@prev_health <= warrior.health)
		if warrior.feel.empty? and warrior.health >=20
			warrior.walk!
		elsif warrior.feel.empty? and warrior.health < 20
			warrior.rest!
		elsif warrior.feel.captive?
			warrior.rescue!
		elsif
			warrior.attack!
		end
	
	elsif warrior.health < @@prev_health
		if warrior.feel.empty? 
			warrior.walk!
		elsif warrior.feel.captive?
			warrior.rescue!
		elsif
			warrior.attack!
		end 
	end
	
	@@prev_health = warrior.health
	
  end # end play_turn 
end #end class Player
