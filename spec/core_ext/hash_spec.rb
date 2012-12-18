require File.join(File.dirname(__FILE__), '..', 'spec_helper')
require 'simply_useful/core_ext/hash'

describe SimplyUseful::CoreExtensions::Keys do

  describe ".deep_symbolize_keys" do
    it "should symbolize keys in a simple one-level hash" do
      t = {"a" => "b", "c" => 2}
      ta = t.deep_symbolize_keys
      te = {:a => "b", :c => 2}
      te.should == ta
    end

    it "should symbolize keys in a two-level deep hash" do
      t = {"a" => {"b" => "c"}}
      ta = t.deep_symbolize_keys
      te = {:a => {:b => "c"}}
      te.should == ta
    end

    it "should symbolize keys in child array's hashes" do
      t = {"a" => [{"b" => "c", "d" => "e"}]}
      te = {:a => [{:b => "c", :d => "e"}]}
      ta = t.deep_symbolize_keys
      te.should == ta
    end
  end

end