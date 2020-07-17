class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.received_email.subject
  #
  def received_email(user)
    @user = user
    mail to: @user.email,
         subject: "【#{@user.name}様からご連絡がございます。】"
  end
end
