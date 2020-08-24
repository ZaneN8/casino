require_relative 'card'
require_relative 'deck'
require_relative 'wallet'
class High_Low

  def initialize
    start_hi_lo
    hi_lo_game
    play_hi_lo_again
  end

 def start_hi_lo
    puts "Welcome to Hi/Lo. Just bet whether the next card is" 
    puts "Higher or lower than the one dealt."
    puts "How much do you want to bet, table limit is $50?"
      @cash = 1000
      @player_bet = gets.chomp.to_i
      case @player_bet
      when @player_bet < @cash && @player_bet <= 50
        @bet_play_field << @player_bet
      when @player_bet > 50 || @player_bet > @cash
        puts "That bet is too big, try again."
      end
      # get from wallet
      puts "#{@cash -= @player_bet} left in your wallet" # gets from wallet
  end

  def hi_lo_game
     deal_hi_lo = Deck.new
     dealt_card = deal_hi_lo.cards.sample.rank
    puts "Here is #{dealt_card}"
    puts "Do you think the next card will be higher 'H' or lower 'L' than that card?"
    player_guess = gets.strip.upcase
    puts "You guess #{player_guess}"
    compare_card = deal_hi_lo.cards.sample.rank
    puts "Comparing card #{compare_card}"
    #case @player_guess
    if player_guess == "L" && compare_card < dealt_card
      puts "You win!" 
      # if compare_card < dealt_card
      @cash << @bet_play_field.to_i * 2
    elsif player_guess == "H" && compare_card > dealt_card
      puts "You win" 
      @cash << @bet_play_field.to_i * 2
      else #player_guess == "H" && @compare_card < @dealt_card || player_guess == "L" && @compare_card > @dealt_card
      puts "LOSER"
    end
  end
  def play_hi_lo_again
    puts "Do you want to play again? (y/n)"
    what_to_do_next = gets.chomp
    case what_to_do_next 
    when "y"
      High_Low.new
    when "n"
      game_options # Needs to go to menu
    end
  end
end