Sidekiq.configure_server do |config|
    config.redis = { url: "radis://localhost:3000/0" }
end

Sidekiq.configure_client do |config|
    config.redis = { url: "radis://localhost:3000/0" }
end
