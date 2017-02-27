class Alouette

  def self.lines_for_verse(number_of_verse)
    verses = [
      "Et la tête!",
      "Et le bec!",
      "Et les yeux!",
      "Et le cou!",
      "Et les ailes!",
      "Et les pattes!",
      "Et la queue!",
      "Et le dos!"
    ]
    lines = []
    (0..number_of_verse).each do |index|
        lines << verses[index]
    end
    lines
  end

end

puts Alouette.lines_for_verse(3)
