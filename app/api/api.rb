require 'grape-swagger'

class API < Grape::API
  before do
    header['Access-Control-Allow-Origin'] = '*'
    header['Access-Control-Request-Method'] = '*'
  end
  prefix 'api'
  mount Acme::Ping
  mount Acme::Raise
  mount Acme::Protected
  mount Acme::Post
  add_swagger_documentation
end
