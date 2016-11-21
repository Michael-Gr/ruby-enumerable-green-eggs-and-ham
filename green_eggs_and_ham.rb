class GreenEggsAndHam
  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    @words = @text.split(/[ .!?,\n]/).reject { |word| word.empty? }
  end

  def word_count
    count = @words.length
  end

  def sorted_unique_words
    downcase_words = @words.map { |word| word.downcase }
    unique_words = downcase_words.uniq
    sorted_words = unique_words.sort
  end

  def number_of_words_shorter_than(number)
    shorter_than_word = @words.select { |word| word.length < number }
    unique_shorter_words = shorter_than_word.length
  end

  def longest_word
    word_length = @words.max_by { |word| word.length}
  end

  def stanzas
    @text.split("\n\n")
  end

end
