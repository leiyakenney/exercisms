class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  # def word_count
  #   counts = Hash.new(0)
  #   @phrase.downcase.gsub(/[^0-9A-Za-z ,']/,'').split(/[\s,]+/).map do |word|
  #     counts[word] += 1
  #   end
  #   counts
  # end

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
