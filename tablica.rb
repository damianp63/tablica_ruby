require 'matrix'

class SquareUniqueMatrix
  def initialize(table)
    @table=table
  end

  def CreateMatrixValue(table)
    (0...table.size).each do |i|
      (0...table.size).each do |j|
        temporary_value=rand(1..table.size)
        print temporary_value
        if(UniqeValues(table,i,j,temporary_value))
          redo
        else
          table[i].push(temporary_value)
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

  def UniqeValues(table,hight,wight,value)
    temporary_table=[]
    (0..hight).each do |i|
      temporary_table.push(table[i][wight])
    end
    duplication_hight=temporary_table.any?{|element| element==value}
    duplication_wight=table[hight].any?{|element| element==value}
    print duplication_wight || duplication_hight
    puts " "
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
