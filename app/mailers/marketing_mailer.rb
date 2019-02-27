class MarketingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.marketing_mailer.campaign.subject
  #
  # def campaign
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  def campaign(client, title, body)
    @body = body
    mail to: client.email, subject: title
  end
end


# teste de envio no console
# MarketingMailer.campaign(Client.last, 'Bootcamp', 'Incrível').delivery_now
