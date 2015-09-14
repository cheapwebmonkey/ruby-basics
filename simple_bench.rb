class SimpleBenchmarker
  def run(description, &block)
    start_time=Time.now
    block.call
    end_time=Time.now
    elapsed=end_time - start_time
    puts "\n"
    puts "#{description} results"
    puts "Elapsed time: #{elapsed}"
  end
end

#How to run? First, Instatiate the the class & assign it to a var
benchmarker = SimpleBenchmarker.new
benchmarker.run "It takes Darth Vader this long to choke a bitch."
 do
  5.times do
    print "."
    sleep(rand(0.1..1.0))
  end
end