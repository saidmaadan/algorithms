require 'rubygems'
require 'rspec'
require_relative '../sort.rb'



describe 'Sort' do
  describe '.selection_sort' do
    context 'when the argument is empty' do
      it "returns an empty array" do
        expect(Sort.selection_sort([])).to eq([])
      end
    end

    context 'when the argument has 1 number' do
      it "returns the same array" do
        expect(Sort.selection_sort([1])).to eq([1])
      end
    end

    context 'when the argument has sorted elements' do
      it "returns the same array" do
        expect(Sort.selection_sort([1, 2, 3])).to eq([1, 2, 3])
      end
    end

    context 'when the argument has unsorted elements' do
      it "returns a sorted array" do
        expect(Sort.selection_sort([2, 1, 3])).to eq([1, 2, 3])
      end
    end

    context 'when the argument has repeating elements' do
      it "returns a sorted array" do
        expect(Sort.selection_sort([3, 2, 3])).to eq([2, 3, 3])
      end
    end

    context 'when the argument is large and randomized' do
      it "returns a sorted array" do
        large_array = []
        100.times {large_array << rand(1000)}
        sorted_array = large_array.sort
        expect(Sort.selection_sort(large_array)).to eq(sorted_array)
      end
    end

  end
end


describe '.merge' do
    context 'when the arguments are empty' do
      it "returns an empty array" do
        expect(Sort.merge([], [])).to eq([])
      end
    end

    context 'when one of the arguments is empty' do
      it "returns the other array" do
        a = [5, 7, 9]
        expect(Sort.merge(a, [])).to eq(a)
        expect(Sort.merge([], a)).to eq(a)
      end
    end

    context 'when each array has 1 element' do
      it "returns an array with both elements sorted" do
        expect(Sort.merge([5], [2])).to eq([2, 5])
      end
    end

    context 'when you have 2 large sorted arrays' do
      it "returns a sorted array that is the combination of the two" do
        a = [2, 6, 10, 26, 58, 89, 103]
        b = [1, 5, 11, 13, 15, 19, 60, 61, 62]
        expect(Sort.merge(a, b)).to eq((a+b).sort)
      end
    end
  end

describe '.mergesort' do
    context 'when the argument is empty' do
      it "returns an empty array" do
        expect(Sort.merge_sort([])).to eq([])
      end
    end

    context 'when the argument has 1 number' do
      it "returns the same array" do
        expect(Sort.merge_sort([1])).to eq([1])
      end
    end

    context 'when the argument has sorted elements' do
      it "returns the same array" do
        expect(Sort.merge_sort([1, 2, 3])).to eq([1, 2, 3])
      end
    end

    context 'when the argument has unsorted elements' do
      it "returns a sorted array" do
        expect(Sort.merge_sort([2, 1, 3])).to eq([1, 2, 3])
      end
    end

    context 'when the argument has repeating elements' do
      it "returns a sorted array" do
        expect(Sort.merge_sort([3, 2, 3])).to eq([2, 3, 3])
      end
    end

    context 'when the argument is large and randomized' do
      it "returns a sorted array" do
        large_array = []
        100.times {large_array << rand(1000)}
        sorted_array = large_array.sort
        expect(Sort.merge_sort(large_array)).to eq(sorted_array)
      end
    end
  end



# describe 'Sort' do
#   describe '.selection_sort' do

#     context 'when the argument is empty' do
#       it "returns an empty array" do
#         expect(Sort.selection_sort([])).to eq([])
#       end
#     end
#    context 'when the argument pass is negative' do
#     it "returns a sorted array" do
#       expect(Sort.selection_sort([1, -3, -4, 6])).to eq([-4, -3, 1,6])
#     end
#   end
#   context "when there is dublicate numbers" do
#     it "returns a sorted array with all dublicate numbers" do
#       expect(Sort.selection_sort([1,2,2,3,4,4,4])).to eq([1,2,2,3,4,4,4])
#     end
#   end
#   context "when the arrays is large and unordered" do
#     it 'returns a sorted array' do
#       array = []
#       for i in (0..500)
#         array.push(rand(500))
#       end
#       expect(Sort.selection_sort(array)).to eq(array.sort)
#     end
#   end
#   end

#   describe 'merge' do
#   context "when you merge two sorted arrays it returns one sorted array" do
#     it 'merges two sorted arrays into a sorted array' do
#       left = [1,2,6,7]
#       right = [3,4,8,9]
#       result = Sort.merge(left, right)
#       expect(result).to eq([1,2,3,4,6,7,8,9])
#   end
# end
# end

# describe 'merge_sort' do
#   context "when the argument is empty" do
#   it 'returns an empty array if an empty array is passed to it' do
#       array = []

#       Sort.merge_sort(array).should == []
#     end
#   end
#   context 'when the argument pass is negative' do
#     it 'sorts array of negative numbers' do
#       array = [1, -3, -4, 6, -9, 0]

#       Sort.merge_sort(array).should == [-9,-4,-3,0,1,6]
#   end
# end
#   context "when there is dublicate numbers" do
#     it "returns a sorted array with all dublicate numbers" do
#       array = [1,2,1,2,3,2,4,5,4,7,4,7]

#       Sort.merge_sort(array).should == [1,1,2,2,2,3,4,4,4,5,7,7]
#   end
# end

#   context "when the arrays is large and unordered" do
#     it 'returns a sorted array in from large and unordered arrays' do
#       array = []
#         for i in (0..500)
#         array.push(rand(500))
#     end

#       Sort.merge_sort(array).should == array.sort
#     end
#   end
# end
# end



