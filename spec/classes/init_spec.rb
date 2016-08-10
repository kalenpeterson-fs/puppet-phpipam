require 'spec_helper'
describe 'phpipam' do

  context 'with default values for all parameters' do
    it { should contain_class('phpipam') }
  end
end
