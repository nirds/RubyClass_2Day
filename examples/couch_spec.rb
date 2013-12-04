require './couch.rb'

describe Couch do

  before :each do 
    @couch = Couch.new [:red, :yellow, :blue], [:yellow, :grey], ["Bradley", "Sticks"]
  end

  it "should allow us to read pillows" do
    @couch.pillows.should eq [:red, :yellow, :blue]
  end

  it "should allow us to set pillows" do
    @couch.pillows = []
    @couch.pillows.should eq []
  end


  it "should allow us to read cushions" do
    @couch.cushions.should eq [:yellow, :grey]
  end

  it "should allow us to set cushions" do
    @couch.cushions = []
    @couch.cushions.should eq []
  end

  it "should allow us to read dogs" do
    @couch.dogs.should eq ["Bradley", "Sticks"]
  end

  it "should allow us to set dogs" do
    @couch.dogs = []
    @couch.dogs.should eq []
  end
end