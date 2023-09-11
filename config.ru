require "hanami/router"
require "hanami/middleware/body_parser"

app = Hanami::Router.new do
  post "/", to: ->(env) do
    env["router.params"].each do |key, value|
      puts "\033[33m[#{key.upcase}] #{value}\033[0m"
    end
    [200, {}, []]
  end
end

use Hanami::Middleware::BodyParser, :json
run app
