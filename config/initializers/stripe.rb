require "stripe"
# Stripe.api_key = Rails.application.credentials.stripe[:secret_key]
Stripe.api_key = Rails.configuration.stripe[:secret_key]
