load "/home/mdobeck/messing_with_ruby/f_names.rb"
load "/home/mdobeck/messing_with_ruby/l_names.rb"
load "/home/mdobeck/messing_with_ruby/countries.rb"

#creates name made up of random first name and random last name
f_name = f_names.sample
l_name = l_names.sample
puts f_name + " " + l_name

#random email generator
puts email = f_name[0].downcase + l_name.downcase + "@email.com"

#samples random country
puts country = countries.sample

#randomly picks true or false
tf = ["true", "false"]
puts tf.sample

#generates a random number between 1 and 9, not including 10
puts rand(10)

#generates numbers 1 or 0
puts rand(2)

#generates random 5 digit number
puts rand(00000..99999)

#generates random 5 digit number
puts (1..5).map{"0123456789".chars.to_a.sample}.join
