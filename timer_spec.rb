require './timer.rb'

describe Timer do
  
  it "should run our code" do
    flag = false
    Timer.time_code do
      flag = true
    end
    flag.should be_true
  end

  it "should return the time our code took to run" do
    Time.stub(:now).and_return(0,10)
    run_time = Timer.time_code do
    end

    run_time.should be_within(0.1).of(10.0)
  
  end

end