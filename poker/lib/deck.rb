require_relative 'card.rb'

class Deck
  attr_reader :count, :deck

  def initialize
    @deck = []
    populate_deck.shuffle_deck
  end

  def populate_deck
    Card.suits.each do |suit|
      Card.numbers.each do |number|
        current_card = Card.new("#{suit} #{number}")
        @deck << current_card
      end
    end
    self
  end

  def shuffle_deck
    deck.shuffle!
  end

  def draw_card
    deck.pop
  end

  def empty?
    deck.empty?
  end
end


