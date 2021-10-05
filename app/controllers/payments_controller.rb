class PaymentsController < ApplicationController
     skip_before_action :verify_authenticity_token, only: [:webhook]
     
     def success
          @name = params[:title]
     end

     def webhook
          payment_id = params[:data][:object][:payment_intent_id]
          payment = Stripe::PaymentIntent.retrieve(payment_id)
          pp payment
          menu_id = payment.metadata.menu_id
          buyer_id = payment.metadata.user_id
       
     end
end