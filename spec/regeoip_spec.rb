require 'spec_helper'
require 'webmock/rspec'

describe Regeoip do
  it 'has a version number' do
    expect(Regeoip::VERSION).not_to be nil
  end

  describe "#resolve_country_code2" do
    it 'resolve for ipv4' do
      ip = "113.190.151.20"
      expect(Regeoip.resolve_country_code2(ip)).to eq("VN")
    end

    it 'resolve for ipv6' do
      ip = "2405:4800:607f:0c34:9033:04b8:fbe3:76c6"
      expect(Regeoip.resolve_country_code2(ip)).to eq("VN")
    end

    it 'resolve for nil' do
      expect(Regeoip.resolve_country_code2(nil)).to be_nil
    end

    it 'resolve for IPAddr' do
      ip = IPAddr.new("113.190.151.20")
      expect(Regeoip.resolve_country_code2(ip)).to eq("VN")
    end
  end
end
