load "/home/mdobeck/messing_with_ruby/f_names.rb"
load "/home/mdobeck/messing_with_ruby/l_names.rb"
load "/home/mdobeck/messing_with_ruby/countries.rb"

#creates name made up of random first name and random last name
f_name = f_names.sample
l_name = l_names.sample
user_name = f_name[1].downcase + l_name

#samples random country
country = countries.sample

#random email generator
email = f_name[0].downcase + l_name.downcase + "@email.com"

open("user_population_script.sql", 'w') {|file|
    #format textually
  for i in 1..5
    file.puts("Insert INTO users
      (user_id, user_name, is_artist, f_name, l_name, country, email)
      VALUES (#{rand(00000..99999)}, '#{user_name}',  #{rand(2)}, '#{f_name}', '#{l_name}', '#{country}', '#{email}');")
    f_name = f_names.sample
    l_name = l_names.sample
    user_name = f_name[1].downcase + l_name   
    country = countries.sample
    email = f_name[0].downcase + l_name.downcase + "@email.com"
  end
}

#creates name made up of random first name and random last name
f_name = f_names.sample
l_name = l_names.sample
f_name + " " + l_name

#randomly picks true or false
tf = ["true", "false"]
tf.sample

#generates a random number between 1 and 9, not including 10
puts rand(10)

#generates numbers 1 or 0
puts rand(2)

#generates random 5 digit number
puts rand(00000..99999)

#generates random 5 digit number
puts (1..5).map{"0123456789".chars.to_a.sample}.join
