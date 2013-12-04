desc "Prints out the names in our names file"
task :print_names do 
  open_file_get_lines {|line| puts line}
end

task :create_class_dir do
  dir_name = 'class'
  Dir.mkdir(dir_name) unless Dir.exists? dir_name
end

task :create_student_dirs => [:create_class_dir] do
  open_file_get_lines do |line|
    dir_name = "class/#{line}"
    Dir.mkdir dir_name unless Dir.exists? dir_name
  end
end

task :clean_up_student_dirs do
  open_file_get_lines do |line|
    Dir.rmdir "class/#{line}"
  end
end


def open_file_get_lines 
  File.open('names') do |f|
    f.each do |line|
      yield line.chomp
    end
  end
end




task :create_dir do |arg1, arg2|
    Dir.mkdir('test2')
end

task :create_file_in_dir => [:create_dir, :chg_dir] do
  
  File.open('test', 'w') do |file|
    file.puts "Hello world"
  end
end


# Create a task that reads all the lines in names and 
# outputs them

# Create a task that creates a class directory

# Create a task dependent on the class directory task that 
# makes a directory in the class directory for each name in 
# names