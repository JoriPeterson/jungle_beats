class LinkedList
	attr_reader :head

	def initialize
		@head = nil
	end

	def append(data)
		@head = Node.new(data)
	end

	def count
		list = []
		list << @head
		list.count
	end

	def to_string
		@head.data
	end
end
