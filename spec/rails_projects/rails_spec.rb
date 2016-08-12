require 'spec_helper'

describe command('ruby -v') do
  its(:stdout){ should match /ruby 2.3.1p112/ }
end

describe command('timedatectl') do
  its(:stdout){ should match /JST/ }
end

describe file('/vagrant/rails_projects') do
  it { should be_directory }
end

describe port(22) do
  it { should be_listening.with('tcp') }
end

describe user('root') do 
  it { should have_login_shell '/bin/zsh' }
end

describe package('git') do
  it { should be_installed }
end

describe package('rails') do
  it { should be_installed.by('gem').with_version('4.2.7') }
end

