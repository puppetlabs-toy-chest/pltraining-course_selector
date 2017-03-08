require 'spec_helper'

describe 'apache', :type => :class do
  describe "default parameters" do
    it {
      should compile
      should contain_package('httpd').with_ensure('present')
      should contain_file('/etc/httpd/conf/httpd.conf').with_ensure('file')
      should contain_service('httpd').with_ensure('running')
    }
  end
  describe "manage an user" do
    let (:params){
      :manage_user => true
    }
    if {
      # Add a test for managing a 'webadmin' user
    }
  end
end
