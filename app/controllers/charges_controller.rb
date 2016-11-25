class ChargesController < ApplicationController
  before_action :amount_to_be_charged
  before_action :set_description

  def new
  end

  def create
    customer = StripeTool.create_customer(email: params[:stripeEmail],
                                          stripe_token: params[:stripeToken])

    StripeTool.create_charge(customer_id: customer.id,
                             amount: @amount,
                             description: @description)

    redirect_to thanks_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def thanks

  end

  private

  def set_description
    @description = 'Dice!'
  end

  def amount_to_be_charged
    @amount = 100
  end
end
