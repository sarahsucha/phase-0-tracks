puts "Hamster Sanctuary!"

puts "hamster's name?"
name = gets.chomp

puts "how noisy is it? (1 being very quiet and 10 being very noisy)"
volume = gets.chomp
volume = volume.to_i


puts "what color fur?"
fur = gets.chomp

puts "good candidate for adoption (y/n)?"
adoptable = gets.chomp


puts "estimated age:"
age = gets.chomp

if age.empty?
	age = nil
else
	age = age.to_f
end



puts "Hamster Record"
puts "-------------------"
puts "Name:  #{name}"
puts "Squeek Volume: #{volume}"
puts "Fur Color: #{fur}"
puts "Adoptable: #{adoptable}"
puts "Estimated Age: #{age.class}"
puts
