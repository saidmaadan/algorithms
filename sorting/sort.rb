module Sort

  def self.selection_sort(array)
    for i in 0..(array.length-1)
      min = i
      for j in i..(array.length-1)
        if array[j] < array[min]
          min = j
        end
      end
      array[i], array[min] = array[min], array[i]
    end
    return array
  end

  def self.merge_sort(array)
    if array.size <= 1
      return array
    end
      mid = array.length / 2
      array1 = array[0...mid]
      array2 = array[mid..array.length - 1]

      x = Sort.merge_sort(array1)
      y = Sort.merge_sort(array2)

      return Sort.merge(x, y)
  end

  def self.merge(array1, array2)
    merged = []
    x = 0
    y = 0
    while array1.length > x  || array2.length > y
      if array1.length == x
        merged = merged + array2[y..-1]
        break
      elsif array2.length == y
        merged = merged + array1[x..-1]
        break
      elsif array1[x] >= array2[y]
        merged.push(array2[y])
        y += 1
      elsif array1[x] < array2[y]
        merged.push(array1[x])
        x += 1
    end
    end
    return merged
    end
end
