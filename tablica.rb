require 'matrix'
puts "Podaj rozmiar tablicy kwadratowej:"
size=gets.chomp.to_i
table = []
#Obliczanie ilości możliwych kombinacji
def first_step(n)
  wynik=1
  for i in 0...n
    wynik*=(n-i)
  end
  return wynik
end
def second_step(n,tab)
  wynik=1
  for i in 0...n
    wynik*=tab[i]
  end
  return wynik
end
def possibilities(value)
  temporary_tab=[]
  for i in 0...value
    temporary_tab[i]=first_step(value-i)
  end
  return val_posibilities=second_step(value, temporary_tab)
end
#koniec obliczeń kombinacji
#Sprawdzanie czy dana wartość się nie powtarza w pionie
def check_value_hight(value,tab,hight,wight)
  if(hight==0)
    return false
  else
    for i in 0...hight
      if(value ==tab[i][wight])
        return true
        break
      end
    end
  end
  return false
end
#Sprawdzanie czy dana wartość się nie powtarza w poziomie
def check_value_wight(value,tab,wight)
  if(wight==0)
    return false
  else
    for i in 0...wight
      if(value ==tab[i])
        return true
        break
      end
    end
  end
  return false
end
#Sprawdzanie czy nie wustąpiła już taka kombinacja
def check_matrix(tab, size)
  temporary_obj=tab[size]
  for i in 0...size
    if(tab[i].eql?(temporary_obj))
      return true
      break
    end
  end
  return false
end
#Tworzenie możliwości
first_dimenction=possibilities(size)
for z in 0...first_dimenction
  table[z]=[]
  for i in 0...size
    table[z][i]=[]
    for j in 0...size
      value=rand(1..size)
   #Tutaj mam problem w różnych momentach program wpada w pętlę nieskończoną
   #Zawsze przy rozmiarze większym od 2
   #Niestety ale nie mam pojęcia jak zrobić do tego testy
     # if(check_value_hight(value,table[z],i,j) || check_value_wight(value,table[z][i],j))
    #   redo
    # else
        table[z][i][j]=value
    #  end
    end
    print table[z][i]
    puts " "
  end
  puts " "
  if(check_matrix(table,z))
    table.delete_at(z)
   redo
  end
end
#wyświetlanie wszystkich kombinacji bez powtórzeń
puts " Lista Mozliwosci"
for z in 0...first_dimenction
  for i in 0...size
    print table[z][i]
    puts " "
  end
  puts " "
end
