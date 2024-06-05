require 'socket'

socket = TCPSocket.new 'google.com', 80

socket.write "GET / HTTP/1.1"
socket.write "\r\n\r\n"

puts socket.recv 100
