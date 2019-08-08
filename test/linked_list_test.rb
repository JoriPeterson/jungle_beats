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
		assert "doop", @list.append("doop")
	end

	def test_list_properties
		@list.append("doop")
		assert_nil @list.head.next_node
		assert 1, @list.count
		assert "doop", @list.to_s
	end
end
