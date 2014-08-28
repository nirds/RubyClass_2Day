require_relative 'calculator'


desc "Prints hello world!"
task :hello => [:print_hello, :puts_world]

task :puts_world do
  puts "world"
  c = Calculator.new
  puts c.add 1,10
end

task :print_hello do
  print "hello "
end

task :default => [:hello]

desc "print all the names in names file"
task :print_names do
  get_lines_from do |name|
    puts name
  end
end

desc "create a class dir"
task :create_class_dir do
  dir_name = 'class'
  Dir.mkdir dir_name unless Dir.exists? dir_name
end

desc "create student directories in class"
task :create_student_dirs => [:create_class_dir] do
  get_lines_from do |name|
    dir_name = "class/#{name}"
    Dir.mkdir dir_name unless Dir.exists? dir_name
  end
end

task :cleanup do
  get_lines_from do |name|
    dir_name = "class/#{name}"
    Dir.rmdir dir_name if Dir.exists? dir_name
  end
  Dir.rmdir 'class' if Dir.exists? 'class'
end


def get_lines_from file_name='names'
  File.open(file_name) do |f|
    f.each do |line|
      yield line.chomp
    end
  end
end



