require 'spec_helper'
require 'binary_tree'

RSpec.describe BinaryTree, type: :model do
  describe 'binary_tree sort should work' do
    it 'should order the array' do
      expected = [1, 4, 6, 7, 9, 10, 14]
      array = [7, 4, 9, 1, 6, 14, 10]
      expect(BinaryTree.sort(array)).to eq expected
    end
  end
end