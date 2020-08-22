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
require_relative 'slots' # something might be wrong and it isntantly goes to Slots
require_relative 'wallet'

# class Casino

#   def initialize
#   end
  # def casino
  # enter_casino
  # game_options
  # end

  def enter_casino
    puts "Welcome to DevPoint Lab Casino!"
    puts "Enter your name."
    entering_users_name = gets.chomp
    new_player1 = Person.new(entering_users_name) #, : => Wallet.new(1000)}
    puts "Welcome #{new_player1.name}!"
    # puts "How much would you like to play with today?"
    # entering_wallet_total = gets.chomp.to_i
    wallet_total = Wallet.new(100)
    game_options
  end



  def game_options
    puts "What would you like to play?"
    puts "1 for high low 2 for slots"
    pick_game = gets.chomp.to_i - 1
    case pick_game
      when 1
        # high_low
      when 2
        Slots.new
      when 3
        puts "Goodbye! and thanks for all the money"
        exit
      else
        puts "That is not an option, #{users_name}, try again! \n"
        game_options
      end
  end

enter_casino