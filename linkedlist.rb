require "./node.rb"

class LinkedList
    attr_accessor :head, :tail, :size
    def initialize 
        @head = nil
        @tail = nil
        @size = 0
    end

    # def generate_head_node node = nil
    #     if node
    #         @head = node
    #     elsif @size > 0 
    #         @head = self.at(0)
    #     else
    #         @head = nil
    #     end
    # end

    def append data
        @size += 1
        new_node = Node.new data
        if @head == nil
            @head = new_node
            @tail = new_node
        elsif @head != nil 
            @tail.next_node = new_node
            @tail = new_node
        end

    end

    def prepend data
        @size += 1
        @head = Node.new(data, @head)
    end

    def at index
        return nil if index >= @size || index < 0
        temp_node = @head
        index.times { temp_node = temp_node.next_node }
        temp_node
    end

    def pop 
        return nil if @size <= 1
        rtrn_obj = @tail
        self.at(@size - 2).next_node = nil
        @size -= 1
        @tail = generate_tail_node
        rtrn_obj 
    end

    def generate_tail_node
        @tail = self.at(@size - 1)
    end

    def contains? data, node = self.head
        #base case: If this node is nil then return false. 
        #if node holds a value then compare the value. If false then continue recursion. If true then return true. 
        if node == nil
            false
        elsif node.value == data
            true
        else
            contains?(data, node.next_node)
        end
        # I can also implement this function with a case statement. But it seems to me that the if/else conditional will be easier to read and understand when I come back to this at a later date or if another dev. is reading my code. 
        # case(!!node)
        # when true
        #     return true if node.value == data
        #     contains(data, node.next_node)
        # when false
        #     false 
        # end
    end

    #This "find" function is almost identical to the above "contains?" function. I realize I could have used the contains? function to my advantage and not have to repeat some syntax. However if I do that then I risk breaking my program if a make a change to the contains?  function later on without realizng the dependancy that "find" has on the "contains?" function. Therfore I simply created the find function independent from the contains? function even though they are almost idntical functions. 
    def find data,node = self.head, counter = 0
        if node == nil
            nil
        elsif node.value == data
            counter
        else
            find(data, node.next_node, counter += 1)
        end
    end
    
    # to_s should return this format "( data ) -> ( data ) -> ( data ) -> nil"
    def to_s node = self.head, string = ""
        if node 
            string += "( #{node.value} ) -> "
            to_s(node.next_node, string)
        else
            string += "nil"
        end
    end

    def insert_at index, data
        if index == 0 
            @head = Node.new(data, self.at(index)) 
            @size += 1
        elsif index > 0 && index < @size
            before_node = self.at(index-1)
            before_node.next_node = Node.new(data, self.at(index))
            @size += 1
        else
            nil
        end
    end

    def remove_at index
        return nil if index >= @size || index < 0
        index == 0 ? @head = self.at(index + 1) : self.at(index - 1).next_node = self.at(index + 1)
        @size -= 1
        generate_tail_node if index == @size 
    end

end