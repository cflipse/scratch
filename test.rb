#!/usr/bin/env ruby
#

trap("INT") do 
  puts "TRAPPED INT"
  @abort = true
end


trap "TERM" do
  puts "TRAPPED TERM"
  sleep 3
  @abort = true
end

puts "I AM #{Process.pid}"


t = Thread.new do
  while !@abort
    print '.'
    sleep 1
  end
end


t.join
