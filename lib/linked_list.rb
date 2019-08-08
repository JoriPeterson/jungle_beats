class LinkedList
	attr_reader :head, :count

	def initialize
		@head = nil
		@count = []
	end

	def append(data)
		@head = Node.new(data)
		@count << @head
	end
end
