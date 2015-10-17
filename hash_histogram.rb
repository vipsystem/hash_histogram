=begin
Author: Kevin Austin
Histogram 
=end


prompt = ">> "
print "\nWelcome to ABC123 Histogram\n"
print "Enter Data: ", prompt
usr_input = gets.chomp.upcase

string = usr_input.split("")

# Creates a new Hash object, string injection and then sorts by frequency.
frequency = Hash.new(0)
string.each { |str| frequency[str] += 1 }
frequency = frequency.sort_by { |freq, str| str }

# Loop outputs frequency/asterisk histogram.
frequency.each do |str, freq|
  puts "Results: " + str + " - " + freq.to_s + " - " + "*" * freq 
end
  puts "\nThank you for trying Histogram!\n"