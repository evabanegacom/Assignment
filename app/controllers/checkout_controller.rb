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

  def create_complex
    complex = ComplexBuilding.find(params[:id])
    if complex.nil?
      redirect_to root_path
      return
    end

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items:[{
        name: 'House',
        amount: complex.price,
        description: 'A complex building',
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

  def create_building
    commercial_unit = CommercialUnit.find(params[:id])
    if commercial_unit.nil?
      redirect_to root_path
      return
    end

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items:[{
        name: 'House',
        amount: commercial_unit.price,
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
end
