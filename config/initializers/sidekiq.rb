# config/initializers/sidekiq.rb

Sidekiq.configure_server do |config|
  config.redis = { url: Rails.application.secrets.sidekiq_secret}
end

Sidekiq.configure_client do |config|
  config.redis = { url: Rails.application.secrets.sidekiq_secret }
end
