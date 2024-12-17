require 'spec_helper'

describe 'vnc::client' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to create_class('vnc::client') }
      it { is_expected.to contain_package('tigervnc') }
    end
  end
end
