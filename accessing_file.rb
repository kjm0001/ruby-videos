## Instantiate a file object
file = File.new('file1.txt', 'w')
## write data to the file
    file.puts 'Ruby'
    file.print "programming\n"
    file.write 'is '
    file << 'fun'
file.close

File.open('file1.txt', 'r') do |file|
    ## read data from the file
    while line = file.gets
      puts "** " + line.chomp.reverse + " **"
    end 
end

File.open('file1.txt', 'r') do |file|
    file.each_line { |line| puts line.upcase }
end    

