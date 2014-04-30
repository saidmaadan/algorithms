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

   # Another method for max
# def self.max(array)
#   max_value = array[0]
#   for 1 in 0..array.length
#     max_value = array[i] if array[i] > max_value
#   end
#   max_value
# end

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
       # Another method for midle_element
#   def self.midle_element(array)
#     return nil if array.length == 0
#     if array.length % 2 ==1
#       return array[array.length/2]
#     else
#       array[array.length/2] + array[array.length/2-1])/2.0
# end
#   end

 def self.sum_arrays(array1, array2)
  x=0
  total_array = []
  until x == array1.length
    total_array << array1[x] + array2[x]
    x += 1
  end
  total_array
  end
end


   # Another method to sum_arrays
# def self.sum_arrays(array1,array2)
# sol = []
# for i in 0..array1.length
#   sol << array1[i] +array2[1]
# end
# sol
# end

