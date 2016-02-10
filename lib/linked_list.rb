require_relative 'node'

class LinkedList
  attr_accessor :head, :data, :link

  def initialize(head = nil)
    @head = head
  end

  def append
  end

  def prepend(data)
    new = Node.new(data, @head)
    @head = new
  end


end
