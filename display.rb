module Display

  def start_screen
    puts "Welcome to Mastermind"
    puts "Pick '1' if you are going to play as Codemaker versus the Computer"
    puts "Pick '2' if you are going to play as Codebreaker versus the Computer"
  end

  def picked_choice
    puts "Choose your number: "
    @initial_pick = gets.chomp.to_i
    puts "You have picked number #{@initial_pick}"
  end

  def win
    puts "You win."
  end

  def lose
    puts "You lose."
    exit
  end

end
