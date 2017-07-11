# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "swapnil"
client_key               "#{current_dir}/swapnil.pem"
chef_server_url          "https://swapnilkhalashe4.mylabserver.com/organizations/a4tech"
cookbook_path            ["#{current_dir}/../cookbooks"]
