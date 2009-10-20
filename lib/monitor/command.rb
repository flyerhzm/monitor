require 'thread'

options = {:browser_port => 9090, :unroller_port => 9099}

OptionParser.new do |opts|
  opts.banner = "Usage: monitor [options]"

  opts.on('-p', '--port BROWSER_PORT', Integer, 'the port which browser use to monitor codes') do |p|
    options[:browser_port] = p
  end
  
  opts.on('-u', '--unroller_port UNROLLER_PORT', Integer, 'the unroller port which is used to connect from and to source codes') do |u|
    options[:unroller_port] = u
  end
  
  opts.separator ""
  opts.separator "Common options:"

  opts.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
  end

  opts.parse!
end

Thread.start do 
  UnrollerServer.new(options[:unroller_port]).run 
end
MonitorApp.run! :host => 'localhost', :port => options[:browser_port]