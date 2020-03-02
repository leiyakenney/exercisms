require 'pry'

class Hamming
  def self.compute(str1, str2)
    total = 0
    if str1 == str2
      total
    else
      if str1.length != str2.length
        raise ArgumentError, 'Strands must be the same length'
      end

      firststr = str1.split('')
      secstr = str2.split('')

      firststr.each_with_index.map do |letter, index|
        if secstr[index] != letter
          total += 1
        end
      end

      total
    end
  end
end
