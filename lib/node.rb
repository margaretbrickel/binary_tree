require 'empty_node'

module BinaryTree
  class Node
    attr_reader :value
    attr_accessor :left, :right

    def initialize(value)
      @value = value
      @left  = EmptyNode.new
      @right = EmptyNode.new
    end

    def insert(value)
      case @value <=> value
      when 1 then insert_left(value)
      when -1 then insert_right(value)
      when 0 then false
      end
    end

    def to_a
      left.to_a + [value] + right.to_a
    end

    def depth_first_search(val)
      puts @payload
      return self if @payload == val

      @children.each do |child|
        return child.depth_first_search(val)
      end
    end

    private
      def insert_left(value)
        @left.insert(value) or @left = Node.new(value)
      end

      def insert_right(value)
        @right.insert(value) or @right = Node.new(value)
      end
  end
end