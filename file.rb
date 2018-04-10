
puts 'This joins a filename to absolute path: ' + File.join('','home','ubuntu','workspace')

puts 'This the filename: ' + __FILE__

puts 'This is the full path directory to the file: ' + File.expand_path(__FILE__)

puts "This is the file's directory: " + File.dirname(__FILE__)

puts "This moves back one directory: " + File.join(File.dirname(__FILE__), '..', "Exercise\ Files")