FROM ubuntu:trusty 

run apt-get install -y ruby2.0 ruby2.0-dev

add test.rb /opt/test.rb

cmd /opt/test.rb
