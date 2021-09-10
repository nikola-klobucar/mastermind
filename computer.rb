require_relative "game_rules.rb"
require_relative "display.rb"
require 'pry'

class Codebreaker

  attr_accessor :random_computer_number, :player_combination

  include GameRules
  include Display

  def initialize
    @random_computer_number = generate_code
    @player_combination = []
  end

  def generate_code
    arr = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
  end

  def play
    turn = 1

    while turn <= 10
      player_guess()
      break if is_solved(player_combination, random_computer_number)
      puts check_guesses_red_and_white(player_combination, random_computer_number)
      player_combination.clear
      turn +=1
    end

    if turn < 10
      win
    else
      lose
    end
  end
end
