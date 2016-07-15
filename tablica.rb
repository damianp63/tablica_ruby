require 'matrix'
#require 'attr_extras'

class SquareUniqueMatrix
#  vattr_initialize :table
    def initialize(table)
      @table=table
    end
    def CreateMatrixValue(table)
      (0...table.size).each do |i|
        (0...table.size).each do |j|
          temporary_value=rand(1..table.size)
          if(UniqeValues(table[i],temporary_value))
            puts temporary_value
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

    def UniqeValues(table,value)
        duplication_wight=table.any?{|element| element==value}
      return duplication_wight

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
