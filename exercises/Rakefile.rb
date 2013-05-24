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
  open_file_yields_lines { |l| puts l }
end

task :create_class_dir do
  Dir.mkdir("class") unless Dir.exists?("class")
end

task :create_student_dir => [:create_class_dir] do
  open_file_yields_lines do |l|
    Dir.mkdir("class/#{l}")
  end
end

def open_file_yields_lines file_name="names"
  File.open(file_name) do |f|
    f.each do |line|
      yield line.chomp
    end
  end
end






