require 'rubygems'
require 'httparty'

class Representative
  include HTTParty

def getinfo
  #return HTTParty.get("http://twitter.com/statuses/public_timeline.json")
  puts "hello world"
end
end
