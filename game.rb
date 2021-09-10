require_relative "display.rb"
require_relative "computer.rb"

class Game

  include Display


  def play
    start_screen
    picked_choice
    case @initial_pick
    when 1
      code_maker
    when 2
      code_breaker
    else
      puts "You have picked wrong number."
      picked_choice
    end
  end

  def code_maker
    puts "You are going to play as Codemaker."
    puts "Out of 6 colours: Red, Orange, Yellow, Green, Blue and Black, pick the combination of 4: "
    Codemaker.new.play
  end

  def code_breaker
    puts "You are going to play as Codebreaker. Take a guess that computer created!"
    Codebreaker.new.play
  end

end
