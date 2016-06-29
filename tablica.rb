require 'matrix'

puts "Podaj rozmiar tablicy kwadratowej:"
size=gets.chomp.to_i
table = []
for i in 0...size
  table[i]=[]
  for j in 0...size
    if(i+j+1>size)
      table [i][j]= i+j+1-size
    else
      table [i][j]= i+j+1
    end
  end
  print table[i]
  puts " "
end
