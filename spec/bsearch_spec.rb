require File.dirname(__FILE__) + '/spec_helper'
require 'simply_useful/bsearch'

describe SimplyUseful::Bsearch do
  
  before do
    @sorted_array = [0,1,2,3,8,16,32,64,100]
    @array_with_duplicates = [1,1,1,3,4,4,5,10,14,14,20]
  end
  
  it "should add BSearch to Array" do
    # Were looking only for two most important methods here
    @sorted_array.should respond_to(:bsearch)
    @sorted_array.should respond_to(:bfind)
  end
  
  describe ".bfind" do
    
    it "should return the object when it finds it" do
      @sorted_array.bfind{|x| x <=> 16}.should == 16
      @sorted_array.bfind{|x| x <=> 100}.should == 100
    end
    
    it "should return nil if it doesn't find it" do
      @sorted_array.bfind{|x| x <=> 4}.should == nil
      @sorted_array.bfind{|x| x <=> -10}.should == nil
      @sorted_array.bfind{|x| x <=>  120}.should == nil
    end
  end
  
  describe ".bsearch" do
    it "should return the first position of an object" do
      @array_with_duplicates.bsearch{|x| x <=> 1}.should == 0
      @array_with_duplicates.bsearch{|x| x <=> 3}.should == 3
      @array_with_duplicates.bsearch{|x| x <=> 4}.should == 4
      @array_with_duplicates.bsearch{|x| x <=> 14}.should == @array_with_duplicates.length-3
    end
  end
  
  describe ".bsearch_last" do
    it "should return the last position of an object" do
      @array_with_duplicates.bsearch_last{|x| x <=> 1}.should == 2
      @array_with_duplicates.bsearch_last{|x| x <=> 3}.should == 3
      @array_with_duplicates.bsearch_last{|x| x <=> 4}.should == 5
      @array_with_duplicates.bsearch_last{|x| x <=> 14}.should == @array_with_duplicates.length-2
    end
  end
  
  describe ".bsearch_range" do
    it "should return a range of matching objects" do
      @array_with_duplicates.bsearch_range{|x| x <=> 1}.should == (0...3)
      @array_with_duplicates.bsearch_range{|x| x <=> 3}.should == (3...4)
      @array_with_duplicates.bsearch_range{|x| x <=> 4}.should == (4...6)
      @array_with_duplicates.bsearch_range{|x| x <=> 14}.should == 
        (@array_with_duplicates.length-3...@array_with_duplicates.length-1)
    end
  end
end