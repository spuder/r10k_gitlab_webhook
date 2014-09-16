require 'webrick'

server = WEBrick::HTTPServer.new(Port: ARGV.first)
server.mount_proc '/' do |req, res|
  r10kstatus = system( "sudo r10k deploy environment -pv warn" )
  puts r10kstatus
end

trap 'INT' do server.shutdown end
server.start
