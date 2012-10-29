#This is the unit of list
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
  # initialization empty list (no params)
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
    case index
    when nil              #throw the exception if index is nil
      raise
    when /[^0-9]/         #throw the exception if index is not a number
      raise
    when 1                #check out if we need to delete first element
      @head=@head.node_to_go
    else
    #throw the exception if index less then 1
    #if index less then 1 throw the exception
    #it probably should be an regular expression
    #but I have no idea how it shoud look like
    if index<1 then raise
     else
        temp_node=@head
        i=1
    #this is the cycle for seek previos element
        while i<(index-1) do
          temp_node.node_to_go == nil ? raise  : temp_node=temp_node.node_to_go
          i+=1
        end
        temp_node.node_to_go=temp_node.node_to_go.node_to_go
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
    rescue
      puts "The list is empty"
  end

  #delete node wth certain index from list
  def show_value(index)
    case index
    when nil
      raise
    when /[^0-9]/
      raise
    when 1
      puts @head.value
    else
      #if index less then 1 throw the exception
      if index<1 then raise
      else
        temp_node=@head
        i=1
  #this is the cycle for seek element
        while i<(index) do
  #throw exeption if index bigger then list length
          temp_node.node_to_go == nil ? raise  : temp_node=temp_node.node_to_go
          i+=1
        end
        puts temp_node.value
      end
    end
    rescue
      puts "There is no such index"
  end
end

a=List.new
a.add_node(4)
a.add_node(3)
a.add_node(2)
a.add_node(1)
s=nil
a.delete_node(5)
a.print_list
