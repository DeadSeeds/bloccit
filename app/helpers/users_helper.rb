module UsersHelper
  def detect_post
    if @user.posts.count == 0
      p ""
    end
  end

  def detect_comment
    if @user.comments.count == 0
      p ""
    end
    #binding.pry
  end
end
