require "sinatra"
require "json"

configure do
  set :bind, "0.0.0.0"
  set :port, "7777"
end

post "/" do
  JSON.parse(request.body.read).each do |key, value|
    puts "\033[33m[#{key.upcase}] #{value}\033[0m"
  end
  nil
rescue => e
  puts e
end
