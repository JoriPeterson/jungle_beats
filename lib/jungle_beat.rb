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


end
