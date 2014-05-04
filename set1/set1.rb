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

  def self.find_sum_2(array, sum=0)
    return false if array == []
    return true if array.include?(0)
    array.each do |a|
      array.each do |b|
        return true if a + b  == sum
      end
    end
    return false
  end

  def self.find_sum_3(array)
    return false if array == []
    return true if array.include?(0)
    return false if array == []
    array.each do |a|
      array.each do |b|
          array.each do |c|
            return true if a + b + c == 0
          end
      end
    end
    return false
  end
 end


    # Another method for find_sum_2
  # def self.find_sum_2(array, sum = 0)
  #   return false if array.length == 0
  #   (0..array.length).each do |i|
  #     return true if array[i] == 0
  #     for j in (i + 1)...array.length
  #       return true if array[i] + array[j] == sum
  #     end
  #   end
  #   false
  # end

    # for i in 0..array.length == (0..array.length).each do |i|


