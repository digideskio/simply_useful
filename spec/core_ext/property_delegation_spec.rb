require File.join(File.dirname(__FILE__), '..', 'spec_helper')
require 'simply_useful/core_ext/module/property_delegation'

class Pair
  attr_accessor :left, :right

  def initialize(left = nil, right = nil)
    self.left = left
    self.right = right
  end
end

class PairWrapper

  delegate_property :left, :right, :to => :backing_pair

  def initialize(backing_pair)
    @backing_pair = backing_pair
  end

  protected
  def backing_pair
    @backing_pair
  end
end

describe "property delegation" do
  it "should delegate property getters to the backing object" do
    pair = Pair.new(1,2)
    wrapper = PairWrapper.new(pair)

    wrapper.left.should eq(1)
    wrapper.right.should eq(2)
  end

  it "should delegate property setters to backing object" do
    wrapper = PairWrapper.new(Pair.new)

    wrapper.left = 2

    wrapper.left.should eq(2)
  end
end