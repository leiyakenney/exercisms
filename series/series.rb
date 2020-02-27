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

  # def slices(num_in_slice)
  #   @num.split('')
  # end

  # def slices(num_in_slice)
  #   binding.pry
  #   if num_in_slice <= @num.length
  #     @num.each_cons(num_in_slice) do |array|
  #       array.map do
  #   end
  # end

  def slices(num_in_slice)
    @num.each_char.each_cons(num_in_slice).map(&:join)
  end

end
