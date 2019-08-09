require 'minitest/autorun'
require 'pry'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test

	def setup
		@jb = JungleBeat.new
	end

	def test_it_exists
		assert_instance_of JungleBeat, @jb
	end

	def test_it_has_attributes
		assert_nil @jb.list.head
	end

	def test_it_can_append
		@jb.append("deep doo ditt")
		assert_equal "deep", @jb.list.head.data
		assert_equal "doo", @jb.list.head.next_node.data
		@jb.append("woo hoo shu")
		# assert_equal 6, @jb.count
	end
end
