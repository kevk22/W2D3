def my_uniq(array)
  uniq = []
  array.each { |el| uniq << el if !uniq.include?(el) }
  uniq
end

class Array
  def two_sum
    output = []

    (0...length).each do |i_1|
      (0...length).each do |i_2|
        output << [i_1, i_2] if i_2 > i_1 && (self[i_1] + self[i_2]).zero?
      end
    end

    output
  end
end

def my_transpose(arr)
  rows = []

  (0...arr.length).each do |i|
    cols = []
    arr.each do |row|
      cols << row[i]
    end
    rows << cols
  end

  rows
end

def stock_picker(arr)
  combinations = Hash.new(0)

  (0...arr.length).each do |i_1|
    (0...arr.length).each do |i_2|
      if i_2 > i_1
        combinations[[i_1, i_2].join(",")] = arr[i_2] - arr[i_1]
      end
    end
  end

  sorted_hash = combinations.sort_by { |k, v| v}
  string_pair = sorted_hash.last[0].split(',')
  
  # string_pair = sorted_hash.keys.last.split(',')
  # p string_pair
  string_pair.map! { |e| e.to_i }
end