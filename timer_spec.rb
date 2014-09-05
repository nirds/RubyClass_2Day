require_relative 'timer'

describe Timer do
  it "should run our code" do
    flag = 0
    Timer.time_code do
      flag += 1
    end
    flag.should_not be_zero
  end

  it "should time our code" do
    Time.stub(:now).and_return(0,3)
    result = Timer.time_code do
    end
    result.should be_within(0.1).of(3.0)
  end

  it "should run our code multiple times" do
    flag = 0
    Timer.time_code(5) do
      flag += 1
    end
    flag.should eq 5
  end

  it "it should give us the average run time" do
    Time.stub(:now).and_return(0,15)
    result = Timer.time_code(5) do
    end
    result.should be_within(0.1).of(3.0)
  end

end