require './lib/node'

class LinkedList
  attr_reader :head

  def count
    return 0 if head.nil?

    node_count = 1
    current = head

    while current.link
      node_count += 1
      current = current.link
    end

    return node_count
  end

  def push(data)
    new_node = Node.new(data)
    current = head
    if head.nil?
      @head = new_node
    else
      while current.link
        current = current.link
      end
      current.link = new_node
    end
  end

  def pop
    return nil if head.nil?
    current  = head
    previous = nil
    while current.link
      previous = current
      current  = current.link
    end
    previous.link = nil
    current.data
  end

  def shift(data)
    new_node = Node.new(data)
    if head.nil?
      @head = new_node
    end
    current = head
    new_node.link = current
    @head = new_node
  end

end
