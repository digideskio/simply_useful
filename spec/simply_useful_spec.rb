require File.dirname(__FILE__) + '/spec_helper'
require 'simply_useful/all'

describe SimplyUseful do
  it "should load" do
    # if it gets here then it means no errors were raised during loading of the module (probably, right?)
  end

  describe "included modules" do
    
    it "should define Hash.deep_symbolize_keys!" do
      lambda { {"a" => "b"}.deep_symbolize_keys! }.should_not raise_error
    end
    
  end

  
end