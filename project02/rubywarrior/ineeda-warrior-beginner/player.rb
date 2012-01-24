class Player
	@@prev_health = 20
	@@counter = 1
  def play_turn(warrior)
    # add your code here - Will DO! **Alyse Haynes**
	
	puts "Counter? #{@@counter}"
	
	if @@counter < 3
		if warrior.feel(:backward).captive?
				warrior.rescue!:backward
		else 
			warrior.walk!:backward

		end
		
	
	elsif(@@counter >= 3)
		if(@@prev_health <= warrior.health)
			if warrior.feel(:backward).captive? and warrior.health < 20
				warrior.rest!
			elsif warrior.feel.empty? and warrior.health >=20
				warrior.walk!
			elsif warrior.feel.empty? and warrior.health < 20
				warrior.rest!
			elsif warrior.feel.captive?
				warrior.rescue!
			elsif
				warrior.attack!
			end
		
		elsif warrior.health < @@prev_health
			if warrior.feel(:backward).empty? and warrior.health <=  8
				warrior.walk!:backward
			elsif warrior.feel(:backward).wall? and warrior.health < 20
				warrior.rest!
			elsif warrior.feel.empty? 
				warrior.walk!
			elsif warrior.feel.captive?
				warrior.rescue!
			elsif
				warrior.attack!
			end 
		end
	end

	@@prev_health = warrior.health
	@@counter = @@counter + 1
	
  end # end play_turn 
end #end class Player
