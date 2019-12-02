require 'node'

module BinaryTree
  def self.from_array(array)
    Node.new(array.first).tap do |tree|
      array.each {|v| tree.insert v }
    end
  end

  def self.sort(array)
    tree = self.from_array(array)
    tree.to_a
  end
end