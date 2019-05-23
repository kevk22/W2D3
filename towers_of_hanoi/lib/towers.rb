class Board
  attr_reader :poles, :num

  def initialize(num)
    @num = num
    @poles = Array.new(3) { Array.new }
    stack_rings(num)
  end

  def stack_rings(num)
    num.times { |i| poles[0] << i }
    p poles
  end

  def won?
    # p poles.last
    poles[0].empty? && poles[1].empty? && (poles[-1] == poles[-1].sort!)
  end

  def play
    until won?
      play_round
    end
    game_won_message
  end

  def game_won_message
    p "That took you WAY TOO LONG!!!"
  end

  def play_round
    print_board
    move_ring(user_input)
  end

  def print_board
    poles.each do |pole|
      print " #{pole}  "
    end
  end

  def user_input
    p "Type 'from_pole, to_pole' (for example 0, 1)"
    input = gets.chomp.split(",")
    input.map! { |e| e.to_i }
  end

  def move_ring(arr)
    from, to = arr
    @poles[to].unshift(@poles[from].shift)
  end
end

# board = Board.new(4)
# board.play