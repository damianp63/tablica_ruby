require 'matrix'

class SquareUniqueMatrix
  def initialize(table)
    @table=table
    to_s(table)
  end

  def to_s(table)
    table.each do |i|
      i.each do |j|
        print "#{j}\t"
      end
      print "\n"
    end
  end

SquareMatrix=SquareUniqueMatrix.new([[1,2,3],[3,1,2],[2,3,1]])
end
