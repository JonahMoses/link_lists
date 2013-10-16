gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_exists
    assert LinkedList
  end

  def test_by_default_it_has_count_zero
    list = LinkedList.new
    assert_equal 0, list.count
  end

  def test_it_accepts_data
    list = LinkedList.new
    list.push("data")
    assert_equal 1, list.count
  end

  def test_head_is_initially_nil
    list = LinkedList.new
    refute list.head
  end

  def test_it_accepts_a_lot_of_data
    list = LinkedList.new
    50.times do
      list.push('data')
    end
    assert_equal 50, list.count
  end

  def test_it_can_remove_last_element
    list = LinkedList.new
    list.push("data 1")
    list.push("data 2")
    list.push("data 3")
    list.push("data 4")
    list.push("data 5")
    list.push("data 6")
    assert_equal 6, list.count
    assert_equal "data 6", list.pop
    assert_equal 5, list.count
  end

  def test_it_shifts_the_head_to_new_beginning_node
    list = LinkedList.new
    list.push("data 1")
    list.push("data 2")
    list.push("data 3")
    assert_equal 3, list.count
    assert_equal "data 1", list.head.data
    list.shift("data 0")
    assert_equal 4, list.count
    assert_equal "data 0", list.head.data
  end


end

