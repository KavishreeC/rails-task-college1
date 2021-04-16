class WelcomeJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    CommentMailer.new_comment(user).deliver
  end
end
