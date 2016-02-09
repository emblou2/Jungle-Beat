require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_a_node_can_be_made
    node = Node.new("dah")
    assert node
  end

  def test_a_node_has_data
    node = Node.new("boom")
    assert_equal "boom", node.data
  end

  def test_a_node_can_have_no_data
    node = Node.new(nil)
    assert_equal nil, node.data
  end

  def test_a_node_has_a_link_that_can_be_nil
    node = Node.new("boop")
    assert_equal nil, node.link
  end

  def test_a_node_does_not_have_to_be_nil
    node = Node.new("ping", 1)
    assert_equal 1, node.link
  end

end
