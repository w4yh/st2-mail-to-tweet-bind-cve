require 'rubygems'
require 'bundler'
require 'open-uri'

Bundler.require

CONSUMER_KEY     = 'YOUR_KEY'
CONSUMER_SECRET  = 'YOUR_SECRET'
ACCESS_TOKEN_KEY = 'YOUR_TOKEN_KEY'
ACCESS_SECRET    = 'YUUR_ACCESS_SECRET'

begin
  twitter_client = Twitter::REST::Client.new do |config|
    config.consumer_key       = CONSUMER_KEY
    config.consumer_secret    = CONSUMER_SECRET
    config.access_token        = ACCESS_TOKEN_KEY
    config.access_token_secret = ACCESS_SECRET
  end

  iarg = ""
  ARGV.each_with_index do |arg, i|
      iarg = "#{iarg} #{arg}"
  end

  str_out = "@MENTION2U " + iarg

  twitter_client.update_with_media(str_out, open("/var/www/html/twimage/chofuku.png"))

rescue => e
  STDERR.puts "[EXCEPTION] " + e.to_s
  exit 1
end
