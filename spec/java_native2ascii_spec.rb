#!ruby19
# encoding: utf-8

require File.dirname(__FILE__) + '/spec_helper'
require 'simply_useful/java_native2ascii'

class JavaNative2AsciiHelper
  def native_ascii_pairs
    [
      ["foo=ęéëèAZ中文", "foo=\\u0119\\u00e9\\u00eb\\u00e8AZ\\u4e2d\\u6587"],
      ["foo=\304\231", "foo=\\u0119"],
      ["bar=bbzz", "bar=bbzz"]
    ] # Believe me! Those characters are there (even if they are not in your fontset!
  end
end

describe SimplyUseful::JavaNative2Ascii do
  before(:all) do
    @helper = JavaNative2AsciiHelper.new
  end
  
  it "should convert from ascii to native" do
    @helper.native_ascii_pairs.each do |native_ascii|
      native,ascii = native_ascii
      SimplyUseful::JavaNative2Ascii.ascii2native(ascii).should == native
    end
  end
  
  it "should convert from native to ascii" do
    @helper.native_ascii_pairs.each do |native_ascii|
      native,ascii = native_ascii
      SimplyUseful::JavaNative2Ascii.native2ascii(native).should == ascii
    end
  end
end