# Create 5 random users
5.times do |i|
  User.create!(
    email: "user#{i + 1}@example.com",
    password: 'password'
  )
end

# Create 5 random service categories
service_categories = ['HVAC', 'Plumbing', 'Handyman', 'Lawn Care', 'Electrical']
service_categories.each do |category|
  ServiceCategory.create!(name: category)
end
