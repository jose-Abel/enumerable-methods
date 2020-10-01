# spec/enumerable_spec.rb

# rubocop : disable Layout/LineLength

require_relative '../enumerable.rb'

describe Enumerable do
  describe '#my_each' do
    let(:new_arr) { [2, 6, 8] }

    it 'Iterate over the array is called and do the instructions in the block predicate over each element' do
      expect(new_arr.my_each { |el| puts el + 2 }).to eql(new_arr.each { |el| puts el + 2 })
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect(new_arr.my_each { |el| el + 2 }).yield_self
    end

    it 'Return an enumerator if no block is given' do
      expect(new_arr.my_each).to be_an Enumerator
    end
  end

  describe '#my_each_with_index' do
    let(:new_arr) { [2, 6, 8] }

    it 'Iterate over the array is called, do the instructions in the block predicate over each element and returns the elements changed based in the instructions of the block predicate' do
      expect(new_arr.my_each_with_index { |el, i| puts el + i }).to eql(new_arr.each_with_index { |el, i| puts el + i })
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect(new_arr.my_each_with_index { |el| el + 2 }).yield_self
    end

    it 'Return an enumerator if no block is given' do
      expect(new_arr.my_each_with_index).to be_an Enumerator
    end
  end

  describe '#my_select' do
    let(:new_arr) { [1, 2, 3, 4, 5] }

    it 'Iterate over the array is called, do the instructions in the block predicate over each element and return an array with the elements that comply with the block predicate' do
      expect(new_arr.my_select(&:even?)).to eql(new_arr.select(&:even?))
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect do
        expect(new_arr.my_select).yield_self
      end
    end

    it 'Return an enumerator if no block is given' do
      expect(new_arr.my_select).to be_an Enumerator
    end
  end

  describe '#my_all?' do
    let(:new_arr) { [1, 2, 3, 5, 8] }
    let(:str_arr) { %w[ant bear cat] }

    it 'Iterate over the array is called and return a boolean either true or false, if all of the elements in the array satisfy the conditions specified in the block' do
      expect(new_arr.my_all? { |el| el > 3 }).to eql(new_arr.all? { |el| el > 3 })
    end

    it 'Iterate over the array is called and return a boolean either true or false, if all of the elements in the array are of the same class specified in the argument' do
      expect(new_arr.my_all?(Numeric)).to eql(new_arr.all?(Numeric))
    end

    it 'Iterate over the array is called and return a boolean either true or false, if all of the elements in the array matches the regular expression specified in the argument' do
      expect(str_arr.my_all?(/d/)).to eql(str_arr.all?(/d/))
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect(new_arr.my_all? { |el| el > 3 }).yield_self
    end
  end

  describe '#my_any?' do
    let(:new_arr) { [1, 2, 3, 5, 8] }
    let(:str_arr) { %w[ant bear cat] }

    it 'Iterate over the array is called and return a boolean either true or false, if any of the elements in the array satisfy the conditions specified in the block' do
      expect(new_arr.my_any? { |el| el > 3 }).to eql(new_arr.any? { |el| el > 3 })
    end

    it 'Iterate over the array is called and return a boolean either true or false, if any of the elements in the array are of the same class specified in the argument' do
      expect(new_arr.my_any?(Numeric)).to eql(new_arr.any?(Numeric))
    end

    it 'Iterate over the array is called and return a boolean either true or false, if any of the elements in the array matches the regular expression specified in the argument' do
      expect(str_arr.my_any?(/d/)).to eql(str_arr.any?(/d/))
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect(new_arr.my_any? { |el| el > 3 }).yield_self
    end
  end

  describe '#my_none?' do
    let(:new_arr) { [1, 2, 3, 5, 8] }
    let(:str_arr) { %w[ant bear cat] }

    it 'Iterate over the array is called and return a boolean either true or false, if none of the elements in the array satisfy the conditions specified in the block' do
      expect(new_arr.my_none? { |el| el > 3 }).to eql(new_arr.none? { |el| el > 3 })
    end

    it 'Iterate over the array is called and return a boolean either true or false, if none of the elements in the array are of the same class specified in the argument' do
      expect(new_arr.my_none?(Numeric)).to eql(new_arr.none?(Numeric))
    end

    it 'Iterate over the array is called and return a boolean either true or false, if none of the elements in the array matches the regular expression specified in the argument' do
      expect(str_arr.my_none?(/d/)).to eql(str_arr.none?(/d/))
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect(new_arr.my_none? { |el| el > 3 }).yield_self
    end
  end

  describe '#my_count' do
    let(:new_arr) { [1, 2, 3, 5, 8] }

    it 'Iterate over the array is called and return the number of elements in the array that satisfy the conditions specified in the block' do
      expect(new_arr.my_count { |el| el > 3 }).to eql(new_arr.count { |el| el > 3 })
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect(new_arr.my_count { |el| el > 3 }).yield_self
    end
  end

  describe '#my_map' do
    let(:new_arr) { [1, 2, 3, 5, 8] }

    it 'Iterate over the array is called and return a new array with booleans true or false, according to the elements satisfy the conditions specified in the block' do
      expect(new_arr.my_map { |el| el > 3 }).to eql(new_arr.map { |el| el > 3 })
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect(new_arr.my_map { |el| el > 3 }).yield_self
    end

    it 'Return an enumerator if no block is given' do
      expect(new_arr.my_map).to be_an Enumerator
    end
  end

  describe '#my_inject' do
    let(:new_range) { (5..10) }

    it 'Return a LocalJumpError if no block is given' do
      expect { new_range.my_inject }.to raise_error LocalJumpError
    end

    it 'Iterate over the array is called and return the value of the operation perfomed in the block predicate' do
      expect(new_range.my_inject { |sum, n| sum + n }).to eql(new_range.inject { |sum, n| sum + n })
    end

    it 'Iterate over the array is called and yield control to the block predicate' do
      expect(new_range.my_inject { |sum, n| sum + n }).yield_self
    end

    it 'Iterate over the array is called and return the value of the operation perfomed in the block predicate and the parameter given' do
      expect(new_range.my_inject(2) { |product, n| product * n }).to eql(new_range.inject(2) { |product, n| product * n })
    end

    it 'Iterate over the array is called and return the value of the operation perfomed based in the mathematical method pass as a Symbol in the argument' do
      expect(new_range.my_inject(:+)).to eql(new_range.inject(:+))
    end

    it 'Iterate over the array is called and return the value of the operation perfomed with the first number parameter based in the mathematical method pass as a Symbol in the second argument' do
      expect(new_range.my_inject(1, :*)).to eql(new_range.inject(1, :*))
    end
  end
end

# rubocop : enable Layout/LineLength
