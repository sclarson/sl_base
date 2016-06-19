require 'spec_helper'

describe 'sl_base::default' do
stub_command("which nginx").and_return('/usr/sbin/nginx')
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'installs the nginx package' do
    chef_run.should install_package 'nginx'
  end

  it 'runs apt-get update' do
    chef_run.should execute_command 'apt-get update'
end
