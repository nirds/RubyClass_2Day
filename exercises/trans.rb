require './pig_latin.rb'
include PigLatinTranslator

File.open('pig_latin.rb') do |file|
  File.open('translated_pig_latin', 'w') do |trans_file|
    file.map{|line| trans_file.puts translate(line)}
  end
end
