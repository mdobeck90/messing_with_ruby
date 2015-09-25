#Generate security string with Ruby
=begin
    we want three types of chars in our string: 
1. lowercase alphabetical
2. uppercase alphabetical
3. numbers
We'll create a single array 'chars' to hold all of these chars.  Using the '..' vs the '...' means we'll hit Z, z, and 26 in our count.
Next we'll need to iterate through char[1], char[2], etc and use the '.to_a' method to create an array in the range of a to z, or 1 to 26.  You get the idea.

.flatten will smush those arrays togther for us.  
=end
chars = [('a'..'z'), ('A'..'Z'), (1..26)].map { |i| i.to_a }.flatten

=begin
    we'll create a string, 'secret_key' that is 75 chars long.  We know we have to loop through and do something inside the block portion so we'll use map.  
Inside .map's block we'll randomly select an index in the 'chars' array we have previously created.
We'll pass chars.length into rand because we don't want to return a truly random number like 1000 or 1,000,001!  We want to stay within the range of the chars array.

.join will turn the array that .map spits out into a string.  Secret_key is now a string 75 chars long.
=end
secret_key = (1..75).map { chars[rand(chars.length)] }.join

outfile = File.open("secret_key.txt","a")
outfile.puts secret_key
outfile.puts Time.new
outfile.close
