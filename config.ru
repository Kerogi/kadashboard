require 'dashing'
require 'chrome_logger'
use ChromeLogger

configure do
  set :auth_token, 'KEROGI_TOKEN'

  helpers do
    def protected!
     # Put any authentication code you want in here.
     # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  env['console'] = 'Hello'
  run Sinatra::Application.sprockets
end

run Sinatra::Application