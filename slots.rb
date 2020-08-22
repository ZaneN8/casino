require_relative 'dice'
require_relative 'person'
require_relative 'wallet'

class Slots
  # attr_accessor :wallet
  
  def initialize
    start_slots
    spin_slots
    slots_cash_out
    play_slots_again
  end
  
  def start_slots
    puts "How much do you want to bet?"
    # puts @wallet1.wallet_total # get from wallet
    @cash = 100
    puts @cash
    # @wallet1.wallet_total -= 100 # get from wallet
    @slots_bet = gets.chomp.to_i
    @cash -= @slots_bet
    # puts "you have #{@wallet1.wallet_total} left in wallet" # gets from wallet
    puts "you have #{@cash} left in wallet" # gets from wallet

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
        winnings = @slots_bet * 8
        puts "WINNER!"
      elsif @die1 == @die2 || @die2 == @die3 || @die1 == @die3
        winnings = @slots_bet * 2
        puts "2 out of 3!"
      else
        winnings = @slots_bet * 0
        puts "Better luck next time!"
      end
      puts "you won $#{winnings}"
      # winnings += @wallet1.wallet_total #add to wallet? DOes not work
      new_cash_total = winnings + @cash  #add to wallet? DOes not work
      # puts "#{@wallet1.wallet_total} is your new total" #add to wallet?
      puts "$#{new_cash_total} is your new total" #add to wallet?
  end
  
  def play_slots_again
    puts "Do you want to play again? (y/n)"
    what_to_do_next = gets.chomp
    case what_to_do_next 
    when "y"
      Slots.new
    when "n"
      # game_options # Needs to go to menu
    end
  end

end
# Slots.new