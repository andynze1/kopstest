
Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  config.vm.define "kopsserver" do |kopsserver|
    kopsserver.vm.box = "bento/ubuntu-20.04"
    kopsserver.vm.provider "vmware_desktop" do |vmware|
      kopsserver.vm.provision "shell", path: "kops-tools-setup.sh"
      vmware.gui = true
      vmware.allowlist_verified = true
      vmware.vmx["memsize"] = "4096"
    end
  end
end
