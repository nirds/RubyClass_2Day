# encoding: utf-8
require 'rspec/collection_matchers'
require_relative 'spec_helper'
describe "The Rspec ruby gem" do

  context "Domain Specific Language" do

    it "creates examples with the #it keyword" do

      # this test code passes, so this example passes
      1.should eq 1

    end

    it "has keywords like #context, and #describe to help organize the spec, or specification" do

      # test code goes here
      (1+2).should eq 3

    end

    it "has easily readable methods like #should to test any object" do

      "Hello".should eq "Hello"

    end

    it "has #should_not to test for negative cases" do

      1.should_not eq 2

    end

    it "creates readable predicate methods" do

      # Integers have #zero? and #nil? predicate methods, so
      # rspec automatically supports the #be_zero and #be_nil parameter to #should_not method
      1.should_not be_zero
      1.should_not be_nil

    end

    it "alerts you when examples fail" do

      # When this example fails,
      # it will show "expected" as 2, and "actual" as 1
      1.should eq 2

    end

    it "supports placeholder examples that lack code (like this one)"

    it "requires that examples use expectations (like #should) to work properly" do

      # The following expression is false.
      # However, this example PASSES because no expectation was created.
      true == false

      # The following line of code is correct, and would cause the example to fail:
      # true.should == false

      # Lesson: It's easy to write bad tests.

    end

    it "should count the characters in my name" do
      "Renée".should have(5).characters
    end

    it "should check how to spell my name" do
      "Renée".should include("ée")
    end

  end

  context "Examples for in-class test exploration" do
    it "should know order of operations" do
      # Fix the Failing Test
      # Order of Operations is Please Excuse My Dear Aunt Sally:
      # Parentheses, Exponents, Multiplication, Division, Addition, Subtraction
      (1+2-5*6/2).should eq -13
    end
    it "should count the characters in your name" do
      pending "make a test to count the characters in your name"
      "Name".should have(5).characters
    end

    it "should check basic math" do
      pending "make a test to check some basic math"
    end

    it "should check basic spelling"

  end

end
