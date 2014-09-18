#!/usr/bin/env ruby
# This script works great
require 'webrick'

server = WEBrick::HTTPServer.new(:Port => ARGV.first)
server.mount_proc '/' do |req, res|
  r10kstatus = system( "foo bar" )
end
trap 'INT' do 
  server.shutdown 
end
server.start
