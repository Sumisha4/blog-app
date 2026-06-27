class CommentMailer < ApplicationMailer
  def new_comment(comment)
    @comment = comment
    @post = comment.post
    @author = comment.post.user
    mail(to: @author.email, subject: "New comment on your post: #{@post.title}")
  end
end
