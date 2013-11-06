require './timer.rb'

describe Timer do
  
  it "should run our code" do
    i = 0
    Timer.run_code do
      i = 1
    end
    i.should eq 1
  end

  it "should time our code" do
    Time.stub(:now).and_return(0,3)
    time = Timer.run_code do
    end
    time.should be_within(0.1).of(3.0) 
  end


end