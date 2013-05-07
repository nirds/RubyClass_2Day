require "#{File.dirname(__FILE__)}/pig_latin"

# 1. if the word starts with consonants move all the consonants 
  # to the end
# 2. if the word starts with qu move qu to the end
# 3. add ay to the word

describe "#translate" do
  include PigLatinTranslator

  it "should translate a simple word" do
    s = translate("nix")
    s.should == "ixnay"
  end

  it "should translate a word beginning with a vowel" do
    s = translate("apple")
    s.should == "appleay"
  end

  it "should translate a two consonent word: stupid" do
    s = translate("stupid")
    s.should == "upidstay"
  end

  it "should translate two words: eat pie" do
    s = translate("eat pie")
    s.should == "eatay iepay"
  end

  it "should translate multiple words: the quick brown fox" do
    s = translate("the quick brown fox")
    s.should == "ethay ickquay ownbray oxfay"
  end

  it "should not translate 'tu' as 'qu' " do
    s = translate("the quick turn")
    s.should == "ethay ickquay urntay"
  end

end
