require_relative 'dice'
require_relative 'person'
require_relative 'wallet'

class Slots
  
  def initialize
    start_slots
    spin_slots
    slots_cash_out
    play_again
  end
  
  def start_slots
    puts "How much do you want to bet?"
    @cash = 100 # get from wallet
    @slots_bet = gets.chomp.to_i
    @cash -= @slots_bet # get from wallet
    puts "#{@cash}" # gets from wallet
  end

  def spin_slots
    @die1 = 1 + rand(6)
    @die2 = 1 + rand(6) 
    @die3 = 1 + rand(6)
  end

  def slots_cash_out
    print "Die1: ", @die1, " Die2: ", @die2, " Die3: ", @die3
    puts
      if @die1 == @die2 && @die2 == @die3
        winnings = @slots_bet * 5
        puts "WINNER!"
      elsif @die1 == @die2 || @die2 == @die3 || @die1 == @die3
        winnings = @slots_bet * 2
        puts "2 out of 3!"
      else
        winnings = @slots_bet * 0
        puts "Better luck next time!"
      end
      puts winnings
      winnings += @cash #add to wallet?
      puts @cash #add to wallet?
  end
  
  def play_again
    puts "Do you want to play again? (y/n)"
    what_to_do_next = gets.chomp
    case what_to_do_next 
    when "y"
      Slots.new
    when "n"
      game_options # Needs to go to menu
    end
  end

end


Slots.new