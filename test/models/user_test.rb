require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_truth
    assert true
  end

  def test_new
    trails = User.all
    User.new do |u|
      u.name = "Bj"
      u.email = "you@you"
      u.permission = 1
      u.password="bb"
      u.save
    end
    bc = User.find_by_email("you@you")
    assert_equal  1, bc.permission
    assert_equal trails.size , User.all.size

  end
end
