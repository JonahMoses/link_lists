gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    assert Node
  end

  def test_it_has_data
    node = Node.new("data")
    assert_equal "data", node.data
  end

  def test_the_link_is_nil_by_default
    node = Node.new("some data")
    assert_equal nil, node.link
  end

  def test_it_has_a_link
    node = Node.new("data")
    node.link = "node link"
    assert_equal "node link", node.link
  end

end
