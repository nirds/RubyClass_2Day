
desc "Says Hello World in Spanish!"
task :hola do 
  puts "Hola Mundo"
  
end

task :default => [:hola]

task :with_defaults, :arg1, :arg2 do |t, args|
  args.with_defaults(:arg1 => :default_1, :arg2 => :default_2)
  puts "Args with defaults were: #{args}"
end
