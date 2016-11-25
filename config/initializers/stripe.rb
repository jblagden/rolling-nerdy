Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Strip.api_key = Rails.configuration.stripe[:secret_key]
