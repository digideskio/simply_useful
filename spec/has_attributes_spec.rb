require File.dirname(__FILE__) + '/spec_helper'
require 'has_attributes'

class ObjectWithAttributes
  include SimplyUseful::HasAttributes
  
  attr_accessor :foo
  
  def set_some_variables
    @foo = "foo"; @bar = "bar"
  end
end

describe SimplyUseful::HasAttributes do
  
  before(:each) do
    @object_with_attributes = ObjectWithAttributes.new
  end
  
  it "should define attributes methods" do
    @object_with_attributes.should respond_to("attributes", "attributes=")
  end
  
  it "should be add an initialize method" do
    @object_with_attributes = ObjectWithAttributes.new(:foo => "new value")
    @object_with_attributes.foo.should == "new value"
  end
  
  describe ".attributes" do
    it "should return all instance variables" do
      @object_with_attributes.set_some_variables
      @object_with_attributes.attributes.keys.should include(:foo, :bar)
    end
    
    it "should return instance variables values" do
      @object_with_attributes.set_some_variables
      @object_with_attributes.attributes[:foo].should == "foo"
      @object_with_attributes.foo = "foo2"
      @object_with_attributes.attributes[:foo].should == "foo2"
    end
  end
  
  describe ".attributes=" do
    it "should set properties" do
      attributes = {:foo => "value1"}
      @object_with_attributes.attributes= attributes
      @object_with_attributes.attributes.should == attributes
    end
    
    it "should raise an error when you try to set a non-property attribute" do
      attributes = {:foo => "value1", :bar => "value2"}
      lambda { @object_with_attributes.attributes=(attributes) }.should raise_error
    end
  end
end