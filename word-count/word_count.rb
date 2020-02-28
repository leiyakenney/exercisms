class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = Hash.new(0)
    @phrase.gsub(/[^0-9A-Za-z ,]/,'').split(/[\s,]+/).map do |word|
      counts[word] += 1
      # binding.pry
    end
    counts
  end
end
