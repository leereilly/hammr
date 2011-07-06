require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Sign-up/in/out functionality tested in Devise gem
  # I'm new to machinist (previous experience  with factory girl); might be breaking some conventions here...
  
  test "user can have a location" do
    location = "#{Faker::Address.city}, #{Faker::Address.state}"
    user = User.make!(:random_valid, :location => location)
    assert_equal location, user.location
  end
  
  test "user can have a date of birth" do
    date_of_birth = "February 37th 2012"
    user = User.make!(:random_valid, :date_of_birth => date_of_birth)
    assert_equal date_of_birth, user.date_of_birth
  end
  
  test "user can have a first name" do
    first_name = Faker::Name.first_name
    user = User.make!(:random_valid, :first_name => first_name)
    assert_equal first_name, user.first_name
  end
  
  test "user can have a last_name" do
    last_name = Faker::Name.last_name
    user = User.make!(:random_valid, :last_name => last_name)
    assert_equal last_name, user.last_name
  end
  
  test "user can at least one job" do
    job = Job.make!(:random)
    user = User.make!(:random)
    assert_equal user.jobs.count, 0
    user.jobs << job
    assert_equal user.jobs.count, 1
  end
  
  # .
  # .
  # .
  # .
  
  test "user can have up to 7 jobs" do

  end
end
