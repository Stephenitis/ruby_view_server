require 'webrick'


## Set the path to serve files from to the public directory in this project
root = File.expand_path 'public'

# Create a new server on port 8000
server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root

## Capture control+c to shut down the server
trap 'INT' do server.shutdown end

  #this file was added in teh schneems readme. He told me to do itdef !(
  server.mount_proc '/' do |req, res|
    res.body = 'Hello, world!'
  end
  

## Start the server
server.start