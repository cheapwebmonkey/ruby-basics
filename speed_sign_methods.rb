def flash_ship_speed(speed)
  10.times do
    print "\r#{speed}"
    sleep 0.45
    print "\r  "
    sleep 0.45
  end
  puts "\n"
end

def display_ship_speed(speed)
  puts speed
end