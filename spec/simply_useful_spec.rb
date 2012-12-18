require File.dirname(__FILE__) + '/spec_helper'
require 'simply_useful_spec'

describe SimplyUseful do
  it "should not load any extensions" do
    lambda {
      SimplyUseful::Format
    }.should raise_error(NameError)
  end

end
