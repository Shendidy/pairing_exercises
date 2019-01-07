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

  def initialize(word)
    word = "" if word == nil
    @word = word.upcase.split("")
  end

  def score
    sum = 0
    @word.each do |letter|
      @@points.each do |key, value|
        if value.include?(letter)
          sum += key
        end
      end
    end
    return sum
  end
end
