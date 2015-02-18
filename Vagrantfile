
Vagrant.require_version '>= 1.7.0'

Vagrant.configure('2') do |config|

  config.vm.box     = 'ubuntu-14-04-mini-amd64'
  config.vm.box_url = 'file://../bento/builds/virtualbox/ubuntu-14-04-mini-amd64.box'

  config.vm.provider 'virtualbox' do |v|
    v.gui = true

    #v.customize ["controlvm", :id, "setvideomodehint", "1280", "800", "32"]

  end

  config.vm.provision :shell, :inline => 'apt-get update', :run => :always

end
