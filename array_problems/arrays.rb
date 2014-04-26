require 'rubygems'
require 'pry-debugger'

module ArrayUtil

  def self.max(array)
    max = array.first
    array.each do |array|
      if array > max
        max = array
      end
    end
    max
end

 def self.middle_element(array)
    if array.empty?
      nil
    elsif array.size.odd?
      mid_element = array.size / 2
      array[mid_element]
    elsif
      a = array.size / 2
      b = array.size / 2 - 1
      (array[a] + array[b]) / 2.0

    end
  end

 def self.sum_arrays(array1, array2)
    total_sum = []
    array1.each_index do |arr|
    total_sum << array1[arr] + array2[arr]
    end
    total_sum
  end
end
