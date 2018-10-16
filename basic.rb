require 'faye/websocket'
require 'eventmachine'
require 'json'
require 'pp'

TOKEN = ARGV[1]
MATCH_ID = ARGV[0]

EM.run {
  websocket_url = "wss://live.pandascore.co/matches/#{MATCH_ID}?token=#{TOKEN}"
  ws = Faye::WebSocket::Client.new(websocket_url)

  ws.on :open do |event|
    puts "Connected"
  end

  ws.on :error do |event|
    puts "An error occured: #{event.message}"
  end

  ws.on :message do |event|
    puts "received #{event.data.length}b"
    frames = JSON.parse(event.data)
    pp frames
  end

  ws.on :close do |event|
    puts "Closing websocket: #{event.reason}"
    ws = nil
  end
}
