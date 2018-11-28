class ChargesController < ApplicationController
  def new
    puts 'CONTROLLLER CHARGES#NEWwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww'
    @amount = params[:amount]
  end

  def create
    # Amount in cents
    puts 'COONTROLLLLLERRRRRRRRRR CHARGES#CREATE'
    puts params
    @amount = params[:format]

    customer = Stripe::Customer.create(email: 'soul.kitchen.rennes@gmail.com', card: params[:stripeToken])

    charge = Stripe::Charge.create(customer: customer.id, amount: @amount, description: 'SoulKitchen', currency: 'eur')

    redirect_to root_path
    flash[:notice] = "Votre commande de #{params[:format]}centimes a bien été effectuée"

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
