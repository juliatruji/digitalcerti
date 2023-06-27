# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head], expose: ['Per-Page', 'Total']
    end
    # allow do
    #   origins 'http://192.168.0.131'
    #   resource '/public/*', headers: :any, methods: :get
  
    #   # Only allow a request for a specific host
    #   resource '/api/v1/*',
    #       headers: :any,
    #       methods: :get,
    #       if: proc { |env| env['HTTP_HOST'] == '192.168.0.131' }
    # end
  end
  # Rails.application.config.hosts << "localhost"
  # Rails.application.config.hosts << "192.168.0.131"
  
  Rails.application.config.hosts = ["192.168.0.131", "localhost", "go.digitalcerti.com"]
  