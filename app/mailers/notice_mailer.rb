class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog(blog)
    @blog = blog
    @greeting = "Hi"

    mail to: "exhikkii@gmail.com"
      subject: '[Achieve]ブログが作成されました'
  end
end