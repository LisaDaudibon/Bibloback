Rack::Attack.throttle('requests per IP', limit: 100, period: 1.minute) do |req|
  req.ip # If you want to limit requests per IP address
end

Rack::Attack.throttled_responder = lambda do |env|
  # Return 429 (Too Many Requests) status code with a custom message
  [429, {}, [{ error: 'Rate limit exceeded. Please try again later.' }.to_json]]
end