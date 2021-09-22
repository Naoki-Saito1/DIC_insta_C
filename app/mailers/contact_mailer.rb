class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "reisa.naoki@icloud.com", subject: "投稿完了！！"
  end
end
