require './timer.rb'

describe Timer do
  it "should run our code" do
    timer = Timer.new
    status = 0

    timer.time_code do
      status = 1
    end

    status.should eq 1
  end

  it "should time our code" do
    timer = Timer.new
    Time.stub(:now).and_return(0,4)
    time = timer.time_code do
    end

    time.should eq 4

  end
end