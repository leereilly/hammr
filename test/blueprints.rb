require 'machinist/active_record'

# I'm new to Machinist; presumably, these'll be broken out into
# their own blueprint files at some points by convention.

# The bare minimum valid user
User.blueprint(:random_valid) do
  email { Faker::Internet.email }
end

# A user with most of the test data
User.blueprint(:random) do
  first_name { Faker::Name.first_name }
  last_name  { Faker::Name.last_name }
  email { Faker::Internet.email }
end

# A random job
Job.blueprint(:random) do
  title { "L337 ninja with #{Faker::Company.catch_phrase}" }
  company   { Faker::Company.name }
end