task :default => :hello

task :hello do
  puts "hello"
end

task :ask_name => [:hello] do
  puts "Tell me your name"
end

desc "This task says hi!"
task :say_hi => [:ask_name] do
  name = "Renee"
  puts "hi #{name}"
end