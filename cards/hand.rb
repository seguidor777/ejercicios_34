class Hand
  attr_reader :cards

  def initialize(deck)
    @deck = deck
    @deck.shuffle
    @cards = []
    
    5.times do
      @cards << @deck.cards.pop
    end
  end
 
  def swap
   @deck.cards << @cards.delete_at(0)
   @cards << @deck.cards.delete_at(0)
  end
end
