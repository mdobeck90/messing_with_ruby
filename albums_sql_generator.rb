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

open("album_population_script.sql", 'w') {|file|
  #format textually
  for i in 1..100
    file.puts("Insert INTO albums
      (album_id, album_name, album_user_id_fk)
      VALUES (albums_id_seq.nextval, 'Greatest Hits#{i}',  #{rand(1..25)});")
    f_name = f_names.sample
    l_name = l_names.sample
    user_name = f_name[1].downcase + l_name   
    country = countries.sample
    email = f_name[0].downcase + l_name.downcase + "@email.com"
  end
}
