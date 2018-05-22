module UsersHelper
  def is_posts(user)
    if user.posts.count == 0
      "#{user.name} has not submitted any posts yet."
    else
      render @user.posts
    end
  end

  def is_comments(user)
    if user.comments.count == 0
      "#{user.name} has not submitted any comments yet."
    else
      render @user.comments
    end
  end
end
