class CommentMailerJob < ApplicationJob
  queue_as :default

  def perform(comment)
    CommentMailer.new_comment(comment).deliver_now
  end
end
