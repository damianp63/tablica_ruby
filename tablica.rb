require 'matrix'

class SquareUniqueMatrix
  def initialize(table)
    @table=table
    if(valid?(table))
      to_s(table)
     end
  end

  def to_s(table)
    table.each do |i|
      i.each do |j|
        print "#{j}\t"
      end
      print "\n"
    end
  end

  def valid?(table)
    temporary_table=[]
    duplication_table=[]
    duplication_hight=duplication_wight=false
    (0...table.size).each do |i|
      (0...table.size).each do |j|
        temporary_table.push(table[j][i])
        if(temporary_table.detect{|e| temporary_table.count(e)>1})
          duplication_hight=true
        end
        if(table[i].detect{|e| table[i].count(e)>1})
          duplication_wight=true
        end
        duplication_table.push(duplication_wight||duplication_hight)
      end
     end
      return duplication_table.any?{|element| element==true}
  end

 SquareMatrix=SquareUniqueMatrix.new([[1,2,3],[3,1,2],[2,3,1]])
end
