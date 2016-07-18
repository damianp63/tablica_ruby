require 'matrix'

class SquareUniqueMatrix
  def initialize(table)
    @table=table
  end

  def CreateMatrixValue(table)
    (0...table.size).each do |i|
      j=0
      while j < table.size do
        temporary_value=rand(1..table.size)
        if(DuplicationValues(table,i,j,temporary_value))
            if(j==(table.size-1) && i!=0)
              table.delete(table[i])
              j=0
            else
               j=j
             end
           else
          table[i].push(temporary_value)
          j+=1
          end
      end
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

  def DuplicationValues(table,hight,wight,value)
    temporary_table=[]
    (0...hight).each do |i|
      temporary_table.push(table[i][wight])
    end
    duplication_hight=temporary_table.any?{|element| element==value}
    duplication_wight=table[hight].any?{|element| element==value}
    return duplication_wight || duplication_hight
  end

puts "podaj rozmiar macierzy"
size = gets.chomp.to_i
table=[]
(0...size).each do |i|
  table.push([])
end
SquareMatrix=SquareUniqueMatrix.new(table)
SquareMatrix.CreateMatrixValue(table)
SquareMatrix.to_s(table)
end
