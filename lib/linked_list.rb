require_relative './node'
require "pry"

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here
    if @head.nil?
      return nil
    else
        last_node = @head
        while last_node.next_node
          last_node = last_node.next_node
        end

        if n == 1
          return last_node.value
        else
          current_node = @head
          while current_node.next_node
              n_node = current_node
              i = n - 1
              i.times { n_node = n_node.next_node }
              if n_node == nil
                return nil
              elsif n_node.next_node == nil
                return current_node.value
              end
            current_node = current_node.next_node
          end
        end

    end

    # current_node = @head
    # while current_node.next_node
    #   currenter_node = current_node
    #   n.times { currenter_node = currenter_node.next_node }
    #   if currenter_node == last_node
    #     return currenter_node
    #   else
    #     return nil
    #   end
    # end
  end

end
