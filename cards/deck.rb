class Deck
  attr_reader :cards

  def initialize()
    require_relative "card.rb"
    @cards = []

    %w{A II III IV V VI VII VIII IX X J Q K}.each do |number|
      %w{Diamonds Swords Clubs Hearts}.each do |suit|
        @cards << Card.new(number, suit)
      end
    end
  end

  def shuffle()
    @cards.shuffle!
  end
end

