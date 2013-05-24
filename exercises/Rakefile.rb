task :default => [:say_renee]

task :say_world => [:say_hello] do
  puts "world"
end 

desc "This task says hello"
task :say_hello do
  puts "hello"
end

task :say_renee => [:say_world] do
  puts "renee"
end

task :say_names do
  File.open("names") do |f|
    f.each do |line|
      puts line
    end
  end
end

task :create_class_dir do
  Dir.mkdir("class") unless Dir.exists?("class")
end

task :create_student_dir => [:create_class_dir] do
  File.open("names") do |f|
    Dir.chdir("class")
    f.each do |name|
      Dir.mkdir("#{name.chomp}")
    end
  end
end






