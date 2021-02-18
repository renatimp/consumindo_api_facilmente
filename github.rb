require 'rest-client'
require 'json'

url = 'https://api.github.com/search/repositories?'
q = 'spotcode'
language = 'ruby'

resp = RestClient.get "#{url}q=#{q}&language=#{language}"

puts JSON.parse(resp.body)["items"][0]["description"]
