require 'minitest/autorun'
require 'pry'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

	def setup
		@list = LinkedList.new
	end

	def test_it_exists
		assert_instance_of LinkedList, @list
	end

	def test_it_has_attributes
		assert_nil @list.head
	end

	def test_it_appends
		@list.append("doop")
		assert_equal "doop", @list.head.data
	end

	def test_list_properties
		@list.append("doop")
		assert_nil @list.head.next_node
		assert_equal 1, @list.count
		assert_equal "doop", @list.to_string
	end

	def test_it_can_append_next_node
		@list.append("doop")
		@list.append("deep")
		assert_equal @list.head.next_node.data, "deep"
		assert_nil @list.head.next_node.next_node
		assert_equal 2, @list.count
		assert_equal "doop deep", @list.to_string
	end

	def test_it_can_prepend_nodes
		@list.append("plop")
		assert_equal "plop", @list.to_string
		@list.append("suu")
		@list.prepend("dop")
		assert_equal "dop plop suu", @list.to_string
		assert_equal 3, @list.count
	end
end
