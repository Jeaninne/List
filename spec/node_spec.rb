require 'spec_helper'

describe Node do
  describe "#create" do
    it "Should create node with value" do
      new_node=Node.new(12)
      new_node.value.should be 12
    end
    it "Should throw an exception due to the lack of params" do
      new_node=Node.new().should raise_error()
    end
  end
end
