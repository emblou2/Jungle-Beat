require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linked_list'
require 'pry'


class LinkedListTest < Minitest::Test

  def test_a_list_can_have_one_node_that_is_the_head
    l = LinkedList.new("stuff")
    assert "stuff", l.head
  end

  def test_a_list_of_one_has_a_tail
    n = Node.new(8)
    l = LinkedList.new(n)
    assert_equal nil, l.link
    assert_equal nil, n.link
  end

  def test_it_returns_all_of_the_list
    l = LinkedList.new("")
  end

  def test_it_prepends
    l = LinkedList.new("here we go")
    l.prepend("pre")
    assert_equal "pre here we go", l.all

  end

  def test_it_appends
    l = LinkedList.new("ping pong poo")
    l.append("app")
    assert_equal "ping pong poo app", l.all
  end

  def test_it_counts
    l = LinkedList.new("yet another list to count")
    assert_equal 5, l.count
  end


end
