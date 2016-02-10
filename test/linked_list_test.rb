require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test


  def test_it_creates_a_one_node_list
    node = Node.new(8)
    l = LinkedList.new(node)
    assert_equal 8, l.head.data

  end

  def test_one_node_list_creates_a_nil_link
    node = Node.new(8)
    l = LinkedList.new(node)
    assert_equal nil, l.head.link
  end

  def test_it_creates_a_two_node_list
    node = Node.new(8)
    second_node = Node.new("something", node)
    l = LinkedList.new(second_node)
    assert_equal 8, l.head.link.data
  end

  def test_it_creates_a_three_node_list
    node = Node.new(8)
    second_node = Node.new("something", node)
    third_node = Node.new("Dog", second_node)
    l = LinkedList.new(third_node)
    assert_equal 8, l.head.link.link.data
  end

  def test_it_appends
    node = Node.new(8)
    l = LinkedList.new(node)
    l.append("stuff")
    assert_equal "stuff", l.head.link.data
  end

  def test_it_prepends
  end

  def test_it_inserts
  end

  def test_includes
  end

  def test_it_pops_one_element
  end

  def test_it_pops_two_elements
  end

  def test_it_counts_nodes
  end

  def test_it_finds_elements
  end

  def test_it_returns_the_list
  end


end
