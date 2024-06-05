require 'socket'

PORT = 8081
socket = TCPServer.new('0.0.0.0', PORT)

def handle_connection(client)
  puts 'new client'

  client.write 'Hello from the server'
end

puts "Listening on port #{PORT}. PRESS CTRL+C to cancel"

loop do 
  client = socket.accept
  Thread.new { handle_connection(client) }
end
