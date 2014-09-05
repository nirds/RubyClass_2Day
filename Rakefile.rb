# require 'rspec/core/rake_task'

# RSpec::Core::RakeTask.new(:spec)

# task :default => :spec

desc "Prints hello world"
task :hello do
  puts "hello world"
end

task :hi do
  helper
end

desc "do stuff"
task :default => [:hello, :hi]

def helper
  puts "hi"
end