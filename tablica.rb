require 'matrix'

class SquareUniqueMatrix
  def initialize(table)
    @table=table
    if(!valid?(table))
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
      temporary_table.push([])
      (0...table.size).each do |j|
        temporary_table[i][j]=(table[j][i])
      end
    end
    (0...table.size).each do |i|
      (0...table.size).each do |j|
        if(temporary_table[i].detect{|e| temporary_table[i].count(e)>1})
          duplication_hight=true
        end
        if(table[j].detect{|e| table[i].count(e)>1})
          duplication_wight=true
        end
        duplication_table.push(duplication_wight||duplication_hight)
      end
    end
    return duplication_table.any?{|element| element==true}
  end

 SquareMatrix=SquareUniqueMatrix.new([[1,2,3],[3,1,2],[2,3,1]])
end
