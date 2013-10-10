# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_plugin "vagrant-chef-zero"

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.hostname = "et-search-api-berkshelf"

  config.vm.box = "precise64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/precise/current/precise-server-cloudimg-vagrant-amd64-disk1.box"

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :private_network, ip: "33.33.33.10"


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  # The path to the Berksfile to use with Vagrant Berkshelf
  # config.berkshelf.berksfile_path = "./Berksfile"

  # Enabling the Berkshelf plugin. To enable this globally, add this configuration
  # option to your ~/.vagrant.d/Vagrantfile file
  config.berkshelf.enabled = true

  # An array of symbols representing groups of cookbook described in the Vagrantfile
  # to exclusively install and copy to Vagrant's shelf.
  # config.berkshelf.only = []

  # An array of symbols representing groups of cookbook described in the Vagrantfile
  # to skip installing and copying to Vagrant's shelf.
  # config.berkshelf.except = []

  config.vm.synced_folder "#{ENV['HOME']}/.chef", "/tmp/local-chef"

  config.omnibus.chef_version = :latest

  config.vm.provision :shell, :inline => "curl -s -L https://www.opscode.com/chef/install.sh | sudo bash"

  config.vm.synced_folder "vagrantsync/", "/vagrantsync"

  if ENV['CHEF_REPO']
    chef_repo = ENV['CHEF_REPO']
  else
    raise "CHEF_REPO is not defined"
  end

  config.chef_zero.chef_repo_path = ".chef-zero/"

  config.vm.provision :chef_client do |chef|

    chef.encrypted_data_bag_secret = "/tmp/local-chef/encrypted_data_bag_secret"
    chef.environment = "stage"
    chef.log_level = "debug"

    chef.run_list = [
        "recipe[et_search_api::default]"
    ]
  end
end
