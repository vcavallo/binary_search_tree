class BST

  attr_accessor :left, :right, :head

  def initialize(node)
    @node = node
    @left = nil
    @right = nil
  end

  def data
    @node
  end

  def left=(new_node)
    @left = new_node
  end

  def right=(new_node)
    @right = new_node
  end

  def left_branch_nil?
    self.left.nil?
  end

  def right_branch_nil?
    self.right.nil?
  end

  def insert(new_node)
    # note to self: I got stuck here when i realized the recursion was missing.
    # I built the above two branch checking methods first, 
    # then building the recursion was easy. 
    # This felt like a breakthrough
    if new_node <= @node && left_branch_nil?
      self.left = BST.new(new_node)
    elsif new_node <= @node && !left_branch_nil?
      left.insert(new_node)
    elsif new_node > @node && right_branch_nil?
      self.right = BST.new(new_node)
    else
      right.insert(new_node)
    end
    # FUUUUUUCK YESSSSSS!!!!!!!!!!!!!! this works!!
  end

  def each

  end

  def traverse(node, next_node)
    # keep going left until nil is found (A)
    # then, set current node to #1,
    #   go up to parent 
    #   set parent to #2
    #   go right once, (B)
    #     repeat! go left until nil is found,
    #     then, set current node to #3
    #     go up to parent
    #     set parent to #4
    #     go right once
    #       repeat! go left until nil is found,
    #       then, set current node to #5
    #       go up to parent
    #       go right once. 
    #         IF YOU CAN'T, go up to parent!
    #         go right once.
    #           IF YOU CAN'T, go up to parent!
    #           go right once.
    #           if you can, keep going left until nil is found....
    # (A) and (B) are the two conditional parts of this recursion.
    # As long as (B) is possible, do (A). when (B) is impossible, 
    # Go up to parent once and try (B) again. 
    ##  When doing (B) results in hitting the root node TWICE, 
    ##  the traversal is over!


  end

end