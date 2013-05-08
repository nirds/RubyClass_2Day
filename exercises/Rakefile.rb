task :default => [:show_names, :create_student_dirs]

task :show_names do
 open_file do |line|
    puts line
  end
end

task :create_class_dir do
  Dir.mkdir('class') unless Dir.exists? 'class'
end

task :create_student_dirs => [:create_class_dir] do
  open_file do |line|
    line.chomp!
    Dir.mkdir("class/#{line}")
  end
end

def open_file
  File.open("names") do |f|
    f.each do |line|
      yield line
    end
  end
end