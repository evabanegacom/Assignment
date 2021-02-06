# frozen_string_literal: true

Rails.configuration.stripe = {
  publishable_key: ENV['stripe_secret_key'],
  secret_key: ENV['stripe_publishable_key']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
