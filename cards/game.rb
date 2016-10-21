require_relative "deck.rb"
require_relative "hand.rb"

deck = Deck.new
puts "Deck size = #{deck.cards.size}"
h1 = Hand.new(deck)
h2 = Hand.new(deck)
puts "H1 cards #{h1.cards.map(&:to_s)}"
puts "Swapping H1..."
h1.swap
puts "H1 cards #{h1.cards.map(&:to_s)}"
puts "H2 cards #{h2.cards.map(&:to_s)}"
puts "Swapping H2..."
h2.swap
puts "H2 cards #{h2.cards.map(&:to_s)}"
puts "Deck size = #{deck.cards.size}"
