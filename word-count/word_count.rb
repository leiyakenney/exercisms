class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, freq|
      freq[word] += 1
    end
  end

  private
  def words
    @phrase.downcase.scan(/\b[\w']+\b/)
  end

end
