describe "Testing the Ruby Language" do
  context "when we are adding numbers" do
    it "should know that 1+2 is 3" do
      (1+2).should eq 3
    end

    it "should fail when there is no equality" do
      2.should eq 3
    end
  end
end