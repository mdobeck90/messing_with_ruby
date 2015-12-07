#generates a random number between 1 and 9, not including 10
puts rand(10)

#generates numbers 1 or 0
puts rand(2)


puts (1..5).map{"0123456789".chars.to_a.sample}.join
