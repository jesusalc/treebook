require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user should enter a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter a last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end

  test "a user should enter a profile name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique profile name" do
    user = User.new
    user.profile_name = 'jesusalc'
    user.first_name = 'Jesus'
    user.last_name = "Alc"
    user.password = "password"
    user.password_confirmation = "password"
    user.email = "jesusalc@yahoo.com"
    assert !user.save
    puts user.errors.inspect
    assert !user.errors[:profile_name].empty?
  end
end
