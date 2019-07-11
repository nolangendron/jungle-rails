class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_email(params)
    @user = params[:user]
    @order = params[:order]
    mail(to: @user.email, subject: "order confirmation for #{@order.id}")
  end
end
