class JungleBeat
	attr_reader :list

	def initialize
		@list = LinkedList.new
	end

	def append(data)
		array = data.split(" ")
		array.each do |data|
			if @list.head.nil?
				@list.head = Node.new(data)
			else
			current_node = @list.head
				until current_node.next_node.nil?
					current_node = current_node.next_node
				end
				current_node.next_node = Node.new(data)
			end
		end
	end

	def count
		length = 0
			current_node = @list.head
			until current_node.nil?
				length += 1
				current_node = current_node.next_node
			end
		length
	end

	def play
		beats = @list.to_string
		`say -r 500 #{beats}`
	end

end
