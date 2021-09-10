require 'pry'

module GameRules

  def is_solved(guess, answer)
    guess == answer
  end

  def check_guesses_red_and_white(guess, answer)
    red_pin_counter = 0
    white_pin_counter = 0
    temp_guess = guess.clone
    temp_answer = answer.clone

    # Guesses for red pins
    temp_guess.each_with_index do |player, index_player|
      next unless player == temp_answer[index_player]
      red_pin_counter += 1
      temp_answer[index_player] = nil
      temp_guess[index_player] = nil
    end

    temp_answer.delete(nil)
    temp_guess.delete(nil)

    # Guesses for white pins
    temp_answer.each_with_index do |rand, index_rand|
      if temp_guess.include?(rand)
        temp_answer[index_rand] = nil
        white_pin_counter += 1
      end
    end

    return "The number of red pins: #{red_pin_counter}\nThe number of white pins: #{white_pin_counter}"
  end


  def player_input_case
    case @player_input
    when "red"
      player_input = 1
      player_combination << player_input
    when "orange"
      player_input = 2
      player_combination << player_input
    when "yellow"
      player_input = 3
      player_combination << player_input
    when "green"
      player_input = 4
      player_combination << player_input
    when "blue"
      player_input = 5
      player_combination << player_input
    when "black"
      player_input = 6
      player_combination << player_input
    when "exit"
      puts "Thank you for playing this game. Bye-bye."
      exit
    else
      puts "You have picked a wrong colour or mistyped; pick again from the begining: "
      play()
    end
  end

  def player_guess
    4.times do
      @player_input = gets.chomp.downcase
      player_input_case()
    end
  end

end
