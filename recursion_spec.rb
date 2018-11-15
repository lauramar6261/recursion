
require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"

require_relative 'recursion'


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'linear search' do
  let(:list1) { [1, 2, 3] }
  let(:empty_list) { [] }
  let(:list2) { [1,2,3,4,5,6] }

  it 'can find an element in a list' do
    expect(linear_search(2, list1)).must_equal 1
    expect(linear_search(6, list2)).must_equal 5
  end

  it 'will return false if it can\'t find the element' do
    expect(linear_search(27, list1)).must_equal(-1)
    expect(linear_search(-1, list2)).must_equal(-1)
  end

  it 'will return false finding an item in an empty list' do
    expect(linear_search(27, empty_list)).must_equal(-1)
  end
end


describe 'binary search' do
  let(:list1) { [1, 2, 3] }
  let(:empty_list) { [] }
  let(:list2) { [1,2,3,4,5,6] }

  it 'can find an element in a list' do
    expect(binary_search(2, list1)).must_equal 1
    expect(binary_search(6, list2)).must_equal 5
  end

  it 'will return false if it can\'t find the element' do
    expect(binary_search(27, list1)).must_equal(-1)
    expect(binary_search(-1, list2)).must_equal(-1)
  end

  it 'will return false finding an item in an empty list' do
    expect(binary_search(27, empty_list)).must_equal(-1)
  end
end
