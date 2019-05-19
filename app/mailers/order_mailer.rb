class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_status_update_notification.subject
  #
  def order_status_update_notification
    @greeting = "Hi"

    mail to: "vania.kabashnikov@gmail.com"
  end
end
