require "./lib/main.rb"
require 'list'

describe List do
  describe "#create" do
    it "Should create list" do
      new_list=List.new.should_not raise_error()
    end
    it "Should throw an exception" do
      new_list=List.new(12).should raise_error()
    end
  end

  describe "#add" do
    it "Should add node with value" do
      new_list=List.new
      new_list.add_node('first').should_not raise_error()
      new_list.print_list.should be 'first'
    end
    it "Should throw an exception due to the lack of params" do
      new_list=List.new
      a = nil
      new_list.add_node(a).should raise_error()
    end
  end

  describe "#delete" do
    it "Should delete node with certain index" do
      new_list1=List.new
      new_list1.add_node(1)
      new_list1.add_node(2)
      new_list1.delete_node(1)
      new_list1.print_list.should be 1
      new_list1.delete_node(1)
      new_list1.print_list.should be_empty
    end
    it "Should throw an exception if index less then 0" do
      new_list1.delete_node(-1).should raise_error()
      new_list1.delete_node(0).should raise_error()
    end
    it "Should throw an exception if index more then list length" do
      new_list1=List.new
      new_list1.add_node(1)
      new_list1.add_node(2)
      new_list1.delete_node(12).should raise_error()
      new_list1.delete_node(3).should raise_error()
    end
    it "Should throw an exception if index is nil" do
      new_list1=List.new
      new_list1.add_node(1)
      s = nil
      new_list1.delete_node(s).should raise_error()
    end
  end

    describe "#print_list" do
#    it "Should print_list" do
#      new_list2=List.new
#      new_list2.add_node('one')
#      new_list2.add_node('two')
      #TODO: check this out
#      new_list2.print_list.should
#    end
    it "Should throw an exception if the list is empty" do
      new_list2=List.new
      new_list2.print_list.should raise_error()
    end
  end

  describe "#show element" do
    it "Should show node value, witch has certain index" do
      new_list3=List.new
      new_list3.add_node(1)
      new_list3.add_node(2)
      new_list3.show_value(1).should be 2
      new_list3.show_value(2).should be 1
    end
    it "Should throw an exception if index less then 0" do
      new_list3=List.new
      new_list3.add_node(1)
      new_list3.show_value(-2)
    end
    it "Should throw an exception if index more then list length" do
      new_list3=List.new
      new_list3.add_node(1)
      new_list3.add_node(2)
      new_list3.show_value(3).should raise_error()
    end
    it "Should throw an exception if index is nil" do
      new_list3=List.new
      new_list3.add_node(1)
      s = nil
      new_list3.show_value(s).should raise_error()
    end
  end

end

