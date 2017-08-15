require "sinatra"
require "bugsnag"

# Configure bugsnag with your API key from your dashboard
Bugsnag.configure do |config|
  config.api_key = "4e996b53cc92ba08d52614d56db04e70"
end


# Enable bugsnag
use Bugsnag::Rack
enable :raise_errors


# Create a "hello world" endpoint
get '/' do
  "Hello World! Ryan"
end

# Create an endpoint that crashes
get '/crash' do
  nil.length
end