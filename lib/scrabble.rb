class Scrabble
  @@points = {
            1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
            2 => ["D", "G"],
            3 => ["B", "C", "M", "P"],
            4 => ["F", "H", "V", "W", "Y"],
            5 => ["K"],
            8 => ["J", "X"],
            10 => ["Q", "Z"]
          }

  def initialize(word, index = 1, times = 1)
    word == nil ? word = "" : word
    @word = word.upcase.split("")
    @times = times
    @index = index
    @sum = 0
  end

  def score
    @word.each_with_index do |ltr, idx|
      @@points.each do |k, v|
        v.include?(ltr) ? idx == @index ? @sum += (k * @times) : @sum += k : 0
      end
    end
    return @sum
  end
end
