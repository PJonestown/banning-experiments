require 'test_helper'

class BannedUsersTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:first_user)
  end

  test "unbanned post creation" do
    log_in_as(@user)  
    assert_difference 'Post.count', 1 do
      @user.posts.create!(body: 'A body')
    end
  end

  test "banned user can't create post" do
    log_in_as(@user, banned: true)
    assert true do 
      @user.banned?
    end
    assert_no_difference 'Post.count' do
      @user.posts.create!(body: 'This should fail')
    end

  end

end
