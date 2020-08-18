package "apache2" do
    # make sure apache2 is installed
    action :install
end

service "apache2" do
    # make sure the http service automatically comes up if the node reboots and is started
    action [ :enable, :start ]
end
