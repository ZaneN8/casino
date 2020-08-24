# Start game player has a name and a wallet
# Player can go to different games via menu
# Slots
# High / Low
# Use classes to start the casino, bankroll, and each individual game
# Player places bet and wins / loses (hint: rand)
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Player's bankroll goes up and down with wins and losses
# Ability to move to and from games

require_relative 'person'
require_relative 'card'
require_relative 'deck'
require_relative 'dice'
require_relative 'high_low'
require_relative 'slots'
require_relative 'wallet'

# class Casino

#   attr_accessor :wallet

#   def initialize
#     enter_casino
#   end

  def enter_casino
    puts "Welcome to DevPoint Lab Casino!"
    puts "Enter your name."
    puts 
    entering_users_name = gets.strip
    puts "Welcome #{entering_users_name}!"
    @new_player1 = Person.new(entering_users_name) #, : => Wallet.new(1000)}
    puts "How much would you like to play with today?"
    starting_amount = gets.chomp.to_i
    @@wallet1 = Wallet.new(starting_amount)
    puts "Well #{@new_player1.users_name} #{@@wallet1.wallet_total} is alot, good luck!"
    game_options
  end



  def game_options
    puts "What game would you like to play?"
    puts "1 for High Low 2 for Slots or 3 to exit the casino"
    pick_game = gets.chomp.to_i 
    case pick_game
    when 1
      puts "High_Low"
      High_Low.new
      game_options
    when 2
      puts "Slots"
      Slots.new
      game_options
    when 3
      puts "Goodbye! And thanks for all the money"
      exit
    else
      puts "That is not an option, #{@new_player1.users_name}, try again! \n"
      game_options
    end
  end


enter_casino

