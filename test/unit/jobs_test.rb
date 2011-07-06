require 'test_helper'

class JobsTest < ActiveSupport::TestCase
  test "jobs have a title" do
    title = "#{Faker::Company.catch_phrase} ninja"
    job = Job.new(:title => title)
    assert_equal title, job.title
  end
  
  test "jobs have a company" do
    company = Faker::Company.name
    job = Job.new(:company => company)
    assert_equal company, job.company
  end
  
end
