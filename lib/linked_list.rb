class LinkedList
	attr_reader :head

	def initialize
		@head = nil
	end

	def append(data)
		new_node = Node.new(data)
		if @head.nil?
			@head = new_node
		elsif @head.next_node.nil?
			@head.next_node = new_node
		end
	end

	def prepend(data)
		current_head = @head
		@head = Node.new(data)
		@head.next_node = current_head
	end

	def insert(index, data)
		current = @head
		(index -1).times do
			current = current.next_node
		end

		new_node = Node.new(data)
		new_node.next_node = current.next_node
		current.next_node = new_node	
	end

	def count
		length = 0
			current_node = @head
			until current_node.nil?
				length += 1
				current_node = current_node.next_node
			end
		length
	end

	def to_string
		string = ""
		current_node = @head
		until current_node.nil?
			string << "#{current_node.data} "
			current_node = current_node.next_node
		end
		string.strip
	end
end
