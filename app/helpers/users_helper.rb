module UsersHelper
  def detect_post
    if @user.posts.count == 0
      true
    end
  end

  def detect_comment
    if @user.comments.count == 0
      true
    end
    #binding.pry
  end
end
