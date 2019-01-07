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
    word = "" if word == nil
    @word = word.upcase.split("")
    @times = times
    @index = index
  end

  def score
    sum = 0
    @word.each_with_index do |letter, idx|
      @@points.each do |key, value|
        if value.include?(letter)
          if idx == @index
            sum += (key * @times)
          else
            sum += key
          end
        end
      end
    end
    return sum
  end
end
