require 'matrix'
require 'attr_extras'

class Vector_generator
  vattr_initialize :size

  def values(size)

   table=[size]
    for i in 0...size
      value=rand(1..size)
      puts value

      if(verification(table,value))
        redo
      else
        table[i]=value
      end

    end

  def verification(table,value)
    for i in 0...table.size
      if(table[i]==value)
        return true
        break
      end
    end
    return false
  end
end
vec=Vector_generator.new(3)
vec.values()
end
