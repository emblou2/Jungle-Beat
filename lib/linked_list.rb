require_relative 'node'
require 'pry'

class LinkedList

  attr_accessor :head, :data, :link, :list

  def initialize(data = nil)
    @head = Node.new(data)
  end



  def prepend(data)
   node = Node.new(data)
   past_head = @head
   node.link = past_head
   @head = node
   data.split.count
  end

  def append(data)
    head_now = @head
    while head_now.link != nil
      head_now = head_now.link
    end
    head_now.link = Node.new(data)
    data.split.count
  end

  def all
    if head.data == nil
      return nil
    else
      now_head = @head
      list = []
      list << now_head.data
      until now_head.link == nil
        now_head = now_head.link
        list << now_head.data
      end
      list.join(" ")
    end
  end

  def count
    all.split(" ").length
  end

end
