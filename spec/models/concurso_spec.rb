require 'spec_helper'

describe Concurso do
  before(:each) do
    @valid_attributes = {
      :numero => 1,
      :d1 => 1,
      :d2 => 1,
      :d3 => 1,
      :d4 => 1,
      :d5 => 1,
      :d6 => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Concurso.create!(@valid_attributes)
  end
end
