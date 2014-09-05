desc "Print the names from names"
task :print_names do
  open_file_and_read_lines do |line|
    puts line
  end
end

desc "create a class dir"
task :create_class_dir do
  dir_name = 'class'
  Dir.mkdir(dir_name) unless Dir.exists? dir_name
end

desc "create student directories"
task :create_student_dirs => [:create_class_dir] do
  open_file_and_read_lines do |line|
    Dir.mkdir("class/#{line}")
  end
end


desc "clean up student directories"
task :clean_up do
  open_file_and_read_lines do |line|
    Dir.rmdir("class/#{line}")
  end
  Dir.rmdir('class')
end


def open_file_and_read_lines file_name='names'
  File.open(file_name) do |file|
    file.each do |line|
      yield line.chomp
    end
  end
end





