require_relative 'card'
require_relative 'deck'

class High_Low


  def initilize
    start_high_low
  end

  def start_high_low
    puts "How much do you want to bet?"
      @cash = 100 # get from wallet
      @slots_bet = gets.chomp.to_i
      @cash -= @slots_bet # get from wallet
      puts "#{@cash}" # gets from wallet
  end

  def high_low_game
    d = Deck.new
    d
  end

  def play_high_low_again
    puts "Do you want to play again? (y/n)"
    what_to_do_next = gets.chomp
    case what_to_do_next 
    when "y"
      High_Low.new
    when "n"
      game_options # Needs to go to menu
    end

end