require 'faker'

User.destroy_all

15.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    social_security_number: Faker::Number.number(9)
    )
  user.save
end

puts "Seed finished"
puts "#{User.count} users created"