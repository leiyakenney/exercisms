require 'pry'
=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(num)
    @num = num
  end

  def slices(num_in_slice)
    unless num_in_slice <= @num.length
      raise ArgumentError.new("You can't do that!")
    end

    @num.each_char.each_cons(num_in_slice).map(&:join)
  end

end
