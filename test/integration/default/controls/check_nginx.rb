control 'check_nginx' do

  describe package('nginx') do
      it { should be_installed }
  end
  
  describe file("/etc/nginx/sites-available/default") do
    it { should exist } # the configuration file should exist
  end
  
  describe nginx do
    its('support_info') { should match /TLS/ }
  end
  
  describe nginx do
    its('version') { should eq '1.14.0' }
  end
  
end
