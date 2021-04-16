class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment(user)
    @greeting = "Hi welcome"
   @user = user
    mail to: @user.email,
    subject: "welcome email",
    from: "kavishreedurai99@gmail.com"
  end
end
