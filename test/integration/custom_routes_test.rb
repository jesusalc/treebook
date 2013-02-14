require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test " that /login route open the loign page"  do
    get '/login'
    assert_response :success 
  end
end
