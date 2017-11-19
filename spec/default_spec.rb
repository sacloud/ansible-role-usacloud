require 'spec_helper'

describe yumrepo('usacloud'), if: os[:family] == 'redhat' do
  it { should exist }
  it { should be_enabled }
end

describe file('/etc/apt/sources.list.d/usacloud.list'), if: os[:family] == 'ubuntu' || os[:family] == 'debian' do
  it { should exist }
end

describe package('usacloud') do
  it { should be_installed }
end
