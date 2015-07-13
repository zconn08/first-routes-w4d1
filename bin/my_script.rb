require 'addressable/uri'
require 'rest-client'


url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/3.json'
).to_s

puts RestClient.patch(url, user: { email: "thisissally@gmail.com" } )
