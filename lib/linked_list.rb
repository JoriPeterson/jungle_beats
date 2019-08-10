class LinkedList
	attr_accessor :head

	def initialize
		@head = nil
	end

	def append(data)
		if @head.nil?
			@head = Node.new(data)
		else
		current_node = @head
			until current_node.next_node.nil?
				current_node = current_node.next_node
			end
		current_node.next_node = Node.new(data)
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

	def find(index, num_of_elements)
		array = self.to_string.split(" ")
		array[index..index + num_of_elements - 1].join(" ")
	end

	def pop
		current_node = @head
		prev_node = @head
		until prev_node.nil? || current_node.next_node.nil?
			prev_node = current_node
			current_node = current_node.next_node
		end
		prev_node.next_node = nil
	end

	def includes?(data)
		self.to_string.include?(data)
	end
end
