class MarketingMailer < ApplicationMailer

  def campaign(client, title, body)
    @body = body
    mail to: client.email, subject: title
  end

end


# teste de envio no console
# MarketingMailer.campaign(Client.last, 'Bootcamp', 'Incrível').delivery_now
