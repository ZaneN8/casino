require_relative 'card'
require_relative 'deck'

class High_Low


  def initilize
    start_high_low
  end

  def start_high_low
    puts "How much do you want to bet?"
    puts @@wallet1.wallet_total 
    @hilow_bet = gets.chomp.to_i
    @@wallet1.wallet_total -= @hilow_bet # Needs to take away
    puts "you have #{@@wallet1.wallet_total} left in wallet"
  end

  def high_low_game
    d = Deck.new
    

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