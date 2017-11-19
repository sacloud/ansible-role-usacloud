require 'spec_helper'

describe yumrepo('usacloud') do
  it { should exist }
  it { should be_enabled }
end
describe package('usacloud') do
  it { should be_installed }
end
