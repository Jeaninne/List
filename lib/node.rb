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
