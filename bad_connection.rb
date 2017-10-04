
=begin Write a program which can imitate a Customer Service Representative whose phone connection is bad with these rules:

If you don't input anything (just hit enter) they respond with HELLO?!
If you ask a question with any lower-case letters, they respond with I AM HAVING A HARD TIME HEARING YOU.
If you ask a question in all upper-case letters, they respond with NO, THIS IS NOT A PET STORE
The first time you say GOODBYE! they say ANYTHING ELSE I CAN HELP WITH?
The second time you say GOODBYE! they say THANK YOU FOR CALLING! and the program exits.
=end

puts "Hello! Thank you for calling our customer care line.  What can I help you with??"
goodbye_counter = 0

loop do
  input = gets.chomp.to_s
  sign_off = 0
if input.empty?
  puts "HELLO?!"
elsif input == input.downcase
  puts "I AM HAVING A HARD TIME HEARING YOU."
elsif input == input.upcase && input != "GOODBYE!"
  puts "NO THIS IS NOT A PET STORE."
elsif input == "GOODBYE!" && goodbye_counter == 0
  puts "ANYTHING ELSE I CAN HELP WITH?"
  goodbye_counter += 1
elsif input == "GOODBYE!" && goodbye_counter != 0
  puts "THANK YOU FOR CALLING!"
  sign_off = 1
else puts "Hello... are you still there?"
end
break if sign_off != 0
end
