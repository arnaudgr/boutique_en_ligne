class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 1000

    customer = Stripe::Customer.create(email: 'soul.kitchen.rennes@gmail.com', card: params[:stripeToken])

    charge = Stripe::Charge.create(customer: customer.id, amount: @amount, description: 'SoulKitchen', currency: 'eur')

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
