class FavoriteMailer < ApplicationMailer
  default from: 'xxdeadseeds@gmail.com'

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@salty-dusk-86449.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@salty-dusk-86449.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@salty-dusk-86449.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@salty-dusk-86449.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@salty-dusk-86449.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@salty-dusk-86449.herokuapp.com>"

    @post = post

    mail(to: post.user.email, subject: "You've favorited #{post.title} and will receive updates about it")
  end

end
