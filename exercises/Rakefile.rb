desc "task to print all the names in the names file"
task :print_names do
  get_lines_from('names')do |line|
    puts line
  end
end

desc "creates a class directory"
task :create_class_dir do
  dir_name = 'class'
  Dir.mkdir dir_name unless Dir.exists? dir_name
end

desc "creates a directory for each student in names"
task :create_student_dirs => [:create_class_dir] do
  Dir.chdir 'class'
  get_lines_from('../names') do |name|
    Dir.mkdir name
  end
end

task :clean_up do
  Dir.chdir 'class'
  get_lines_from('../names') do |name|
    Dir.rmdir name
  end
  Dir.chdir '..'
  Dir.rmdir 'class'
end


def get_lines_from file_name
  File.open(file_name) do |f|
    f.each do |line|
      yield line.chomp
    end
  end

end







desc "Task to print hello world"
task :hello_world, [:name, :email] do |t, args|
  puts "You passed in #{args}"
  puts "hello world! #{args[:name]}"
end

task :say_hi do
  Rake.application.invoke_task("hello_world[Renee, renee@nird.us]")
  Rake::Task[:hello_world].invoke('Renee', 'renee@nird.us')
  puts "hi"
end

task :default => [:hello_world, :say_hi]