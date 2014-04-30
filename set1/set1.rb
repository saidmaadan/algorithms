module Set1
  def self.swap_small(array)
    smallest = array[0]
    smallest_index = 0
    for i in 0...array.length
      if array[i] <  smallest
        smallest = array[i]
        smallest_index = i
      end
    end

    array[smallest_index] = array[0]
    array[0] = smallest
    array
  end


  def self.find_sum_2(array, sum = 0)
    return false if array.length == 0
    (0..array.length).each do |i|
      return true if array[i] == 0
      for j in (i + 1)...array.length
        return true if array[i] + array[j] == sum
      end
    end
    false
  end

    # for i in 0..array.length == (0..array.length).each do |i|


  def self.find_sum_3(array, sum = 0)
    return false if array.length == 0
    (0..array.length).each do |i|
      return true if array[i] == 0
      for j in (i + 1)...array.length
      return true if array[j] == 0
      for k in (j + i + 1)...array.length
        return true if array[i] + array[j] + array[k] == sum
      end
    end
  end
    false
  end
end

