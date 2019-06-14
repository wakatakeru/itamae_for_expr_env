require 'spec_helper'

describe package('nginx'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('nginx'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end
