class Alouette
attr_reader :verses

  def self.lines_for_verse(number_of_verse)
    @body_parts = [
      "la tête",
      "le bec",
      "les yeux",
      "le cou",
      "les ailes",
      "les pattes",
      "la queue",
      "le dos"
    ]

    lines = []
    (0..number_of_verse).each do |index|
        lines << "Et #{ @body_parts[index] }!"
    end
    lines.reverse
  end

  def self.verse(number_of_verse)

    double_verse = []
    lines_for_verse(number_of_verse).each do |line|
      double_verse << line + "\n"
      double_verse << line + "\n"
    end

    verse_beginning = "Je te plumerai #{ @body_parts[number_of_verse] }.\nJe te plumerai #{ @body_parts[number_of_verse] }."

    verse_ending = "Alouette!\nAlouette!\nA-a-a-ah"

    verse = "#{verse_beginning}\n#{double_verse.join}#{verse_ending}"

    return verse
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    song = ""

    8.times do |verse|
      song << "#{refrain}\n\n"
      song << "#{verse(verse)}\n\n"
    end

    return song + refrain
  end

end

puts Alouette.sing
