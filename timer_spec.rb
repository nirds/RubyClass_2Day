require './timer.rb'

describe Timer do 
  include Timer
  it "should run some code" do
    flag = false
    time_code do
      flag = true
    end
    flag.should be_true
  end

  it "give me the time my code took to run" do
    Time.stub(:now).and_return(0,3)
    time_code do
    end.should be_within(0).of(3.0)
  end

end