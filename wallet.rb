# Start game player has a name and a wallet
# Player can go to different games via menu
# Player's bankroll goes up and down with wins and losses

require_relative 'person'
# require_relative 'casino'




class Wallet
  attr_accessor :wallet_total

  def initialize(wallet_total)
  # @wallet_total = wallet_total
    1000 = wallet_total
  end

end
