desc "Print the names in the names file"
task :print_names do 
  open_file('names'){|line| puts line}
end

desc 'Create the class directory'
task :create_class_dir do
  Dir.mkdir('class') unless Dir.exists? 'class'
end

task :create_student_dirs => [:create_class_dir] do 
  Dir.chdir('class')
  open_file('../names') do |line|
    Dir.mkdir(line)
  end
end

task :remove_all_directorys do
  Dir.entries('class').each do |d|
    Dir.rmdir("class/#{d}") unless ['.', '..'].include? d
  end
  Dir.rmdir('class')
end

def open_file(file)
  File.open(file) do |f|
    f.each{|line| yield line.chomp}
  end
end

