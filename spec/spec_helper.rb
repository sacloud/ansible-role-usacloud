require 'serverspec'
require 'net/ssh'

set :backend, :ssh

host = ENV['TARGET_HOST']
ssh_config_files = ['./.vagrant/ssh-config'] + Net::SSH::Config.default_files
options = Net::SSH::Config.for(host, ssh_config_files)

options[:user] ||= Etc.getlogin

set :host,        options[:host_name] || host
set :ssh_options, options
