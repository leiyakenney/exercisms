require 'pry'

class Matrix
  attr_reader :rows

  def initialize(mat)
    @mat = mat
    @rows = mat.split("\n").map{ |row| row.split(' ').map(&:to_i)}
  end

end
