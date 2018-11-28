class UserMailer < ApplicationMailer
    
    def new_order
     #puts params.inspect
    
     ##### Pour tourner ALONE #######
     #user = User.find(params[:id])
     #order = Order.find(params[:id])
    
     ####### TEST##########
     @user = User.find(2)
     @order = Order.find(2)
     puts @user
     puts @order
     mail(to: @user.email, subject: "Confirmation de votre commande n° #{@order.id}")
    end

   

    def new_order_admin(order)
    
    admin = "cyril.calvez22100@gmail.com"
    
    mail(to: admin, subject: "Félicitations, nouvelle commande numéro #{@order.id}")
  end




end