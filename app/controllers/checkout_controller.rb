# frozen_string_literal: true

class CheckoutController < ApplicationController
  def create
    house = House.find(params[:id])
    if house.nil?
      redirect_to root_path
      return
    end

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items:[{
        name: 'House',
        amount: house.price,
        description: 'A house',
        currency: 'usd',
        quantity: 1
      }],
      success_url: checkout_success_url,
      cancel_url: checkout_cancel_url
    )

    respond_to do |format|
      format.js
      format.html
    end
  end

  def success
  end

  def cancel
  end
  # def create
  #   # Amount in cents
  #   @house = House.find(params[:id])
  #   @amount = @house.price

  #     customer = Stripe::Customer.create({
  #                                          email: params[:stripeEmail],
  #                                          source: params[:stripeToken]
  #                                        })

  #   charge = Stripe::Charge.create({
  #                                    customer: customer.id,
  #                                    amount: @amount,
  #                                    description: 'Rails Stripe customer',
  #                                    currency: 'usd'
  #                                  })
  # rescue Stripe::CardError => e
  #   flash[:error] = e.message
  #   redirect_to new_charge_path
  # end
end
