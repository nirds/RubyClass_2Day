task :default => :say_hi

task :yell_hi do
  puts "HI HI"
end

desc "This says hi"
task :say_hi => [:yell_hi] do 
  puts "hi"
end