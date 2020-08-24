class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :rank, :suit, :color
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'K', 'Black')
@@card_rank = ["A", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
@@card_color = ["Red", "Black"]
@@card_suit = ["♥", "♦", "♣", "♠"]

  def initialize(rank, suit, color)
    @rank = rank
    @suit = suit
    @color = color
  end
 end