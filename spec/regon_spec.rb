require 'spec_helper'

describe Valideez::Regon do
  it "should be valid" do
    %w[590096454].each do |n|
      Valideez::Regon.new(n).should be_valid
    end
  end

  it "should be invalid" do
    %w[590096453 59009645412 390096454].each do |n|
      Valideez::Pesel.new(n).should_not be_valid
    end
  end
end
