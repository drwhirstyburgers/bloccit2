class FavoriteMailer < ApplicationMailer
  default from: "drwhirst@outlook.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@stark-taiga-97122.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@stark-taiga-97122.herokuapp.com>"
    headers["References"] = "post/#{post.id}@stark-taiga-97122.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(user, post)
    @user = user
    @post = post

    mail(to: user.email, subject: "You created the post: #{post.title}")
  end
end
