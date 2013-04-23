require './timer.rb'

describe Timer do
  include Timer

  it "should run our code" do
    counter = 0
    run_code do
      counter += 1 
    end
    counter.should eq 1
  end

end