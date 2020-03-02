require 'pry'
=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(str1, str2)
    total = 0
    if str1 == str2
      total
    else
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
