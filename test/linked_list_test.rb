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

	def test_it_can_insert_nodes
		@list.append("plop")
		@list.append("suu")
		@list.prepend("dop")
		@list.insert(1, "woo")
		assert_equal "dop woo plop suu", @list.to_string
	end

	def test_it_can_find_nodes
		@list.append("deep")
		@list.append("woo")
		@list.append("shi")
		@list.append("shu")
		@list.append("blop")
		assert_equal "shi", @list.find(2, 1)
		assert_equal "woo shi shu", @list.find(1, 3)
		assert true, @list.includes?("deep")
		refute @list.includes?("dep")
	end

	def test_it_can_remove_last_element
		@list.append("deep")
		@list.append("woo")
		@list.append("shi")
		@list.append("shu")
		@list.append("blop")
		@list.pop
		@list.pop
		assert_equal "deep woo shi", @list.to_string
		@list.pop
		@list.pop
		@list.pop
		assert " ", @list.to_string
		@list.pop #attempt to pop on empty
		assert " ", @list.to_string
	end
end
