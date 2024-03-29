class Node
attr_accessor :value, :node_to_go
#initialise new node for the list with certain value
  def initialize(value)
    value==nil ? raise  :          #throw an exception if there were no value
    @value=value
    @node_to_go=nil
    rescue
      puts "There is no such number"
  end
end

class List
  def initialize
    @head=nil
  end

  #adding new node in the begining of the list with certain value
  def add_node(value)
    new_nod = Node.new(value)
    new_nod.node_to_go=@head
    @head=new_nod
  end

  #delete node wth certain index from list
  def delete_node(index)
    if index.class != Fixnum then raise
    else
    if index<1 then raise
     else
     if index == 1 then @head=@head.node_to_go
      else
        temp_node=@head
        i=1
        while i<(index-1) do
          temp_node.node_to_go == nil ? raise  : temp_node=temp_node.node_to_go
          i+=1
        end

      temp_node.node_to_go=temp_node.node_to_go.node_to_go
      end
    end
    end
    rescue
      puts "There is no such index"
  end
  

  #print all the values in list
  def print_list
    @head=nil ? raise  :                #throw the exception if the list is empty
    temp_node=@head
    while temp_node != nil do           #cycle to the end of list
      puts temp_node.value              #print the value
      temp_node=temp_node.node_to_go    #and go to the next
    end
    return true
    rescue
      puts "The list is empty"
      return nil
  end

  #delete node wth certain index from list
  def show_value(index)
   if index.class != Fixnum then raise
    else
      if index<1 then raise
      else if index == 1 then return @head.value
      else
        temp_node=@head
        i=1
        while i<(index) do
          temp_node.node_to_go == nil ? raise  : temp_node=temp_node.node_to_go
          i+=1
        end
        return temp_node.value
      end
      end
    end
    rescue
      puts "There is no such index"
  end
end
