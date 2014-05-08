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


 # You can break down an array into smallest array

 def self.merge_sort(array)
    return array if array.size <= 1
      mid = array.length / 2
      array1 = array[0...mid]
      array2 = array[mid..array.length - 1]
      left_half = Sort.merge_sort(array1)
      right_half = Sort.merge_sort(array2)

      return Sort.merge(left_half, right_half)
   end

  def self.merge(array1, array2)
    merged = []
    left = 0
    right = 0
    while array1.length > left  || array2.length > right
      if array1.length == left
        merged = merged + array2[right..-1]
        break
      elsif array2.length == right
        merged = merged + array1[left..-1]
        break
      elsif array1[left] >= array2[right]
        merged.push(array2[right])
        right += 1
      elsif array1[left] < array2[right]
        merged.push(array1[left])
        left += 1
    end
    end
    return merged
    end
 end

































































