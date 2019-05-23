class Card
  SUITS = ["♠️", "♥️", "♣️", "♦️"].freeze
  NUMBERS = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"].freeze

  attr_reader :value, :point
  def initialize(value)
    @value = value
    @point = assign_point(value)
  end

  def assign_point(value)
    if value.include?("King")
      13
    elsif value.include?("Queen")
      12
    elsif value.include?("Jack")
      11
    elsif value.include?("Ace")
      14
    else
      value[3..-1].to_i
    end
  end

  def self.suits
    SUITS
  end

  def self.numbers
    NUMBERS
  end
end
