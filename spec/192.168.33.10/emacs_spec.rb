require 'spec_helper'

describe package('emacs'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('emacs'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end
