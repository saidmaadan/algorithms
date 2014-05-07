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
   context 'when the argument pass is negative' do
    it "returns a sorted array" do
      expect(Sort.selection_sort([1, -3, -4, 6])).to eq([-4, -3, 1,6])
    end
  end
  context "when there is dublicate numbers" do
    it "returns a sorted array with all dublicate numbers" do
      expect(Sort.selection_sort([1,2,2,3,4,4,4])).to eq([1,2,2,3,4,4,4])
    end
  end
  context "when the arrays is large and unordered" do
    it 'returns a sorted array' do
      array = []
      for i in (0..500)
        array.push(rand(500))
      end
      expect(Sort.selection_sort(array)).to eq(array.sort)
    end
  end
  end

  describe 'merge' do
  context "when you merge two sorted arrays it returns one sorted array" do
    it 'merges two sorted arrays into a sorted array' do
      array1 = [1,2,6,7]
      array2 = [3,4,8,9]
      result = Sort.merge(array1, array2)
      expect(result).to eq([1,2,3,4,6,7,8,9])
  end
end
end

describe 'merge_sort' do
  it 'returns an empty array if an empty array is passed to it' do
      array = []

      Sort.merge_sort(array).should == []
    end
  context 'when the argument pass is negative' do
    it 'sorts array of negative numbers' do
      array = [1, -3, -4, 6, -9, 0]

      Sort.merge_sort(array).should == array.sort
  end
end
  context "when there is dublicate numbers" do
    it "returns a sorted array with all dublicate numbers" do
      array = [1,2,2,3,4,4,4]

      Sort.merge_sort(array).should == array.sort
  end
end

  context "when the arrays is large and unordered" do
    it 'returns a sorted array in from large and unordered arrays' do
      array = []
        for i in (0..500)
        array.push(rand(500))
    end

      Sort.merge_sort(array).should == array.sort
    end
  end
end
end
