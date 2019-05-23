require_relative 'deck.rb'
require_relative 'card.rb'

class Hand
  attr_reader :deck, :cards

  def initialize
    @size = 0
    @cards = []
    @deck = Deck.new
  end

  def initial_draw_cards
    5.times do 
      draw_one_card
    end
    cards # might need to change it
  end

  def draw_one_card # assuming player has already dumped some cards from his hand
    if @deck.empty?
      @deck = Deck.new
    end
    @cards << deck.draw_card
    @size += 1
  end

  def royal_flush?
    flush? && straight?
  end

  def flush?
    @cards.all? { |card| cards[0].value[0] == card.value[0] } 
  end

  def straight?
    points = []
    @cards.each { |card| points << card.point }
    points.sort!

    (1...points.length).each do |i|
      return false if points[i] - 1 != points[i - 1]
    end
    true
  end
end

hand = Hand.new
pp hand.initial_draw_cards
p "-----------------------"
# p hand.cards[0].value[0]
p hand.royal_flush?

