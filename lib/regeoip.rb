require 'regeoip/version'
require 'geoip'

module Regeoip
  def self.resolve_country(ip)
    return nil if ip.nil?
    if ip =~ /^[0-9.]+$/
      geoipv4.country(ip)
    else
      geoipv6.country(ip)
    end
  end

  def self.resolve_country_code2(ip)
    resolve_country(ip).country_code2
  end

  private

  def self.geoipv4
    @geoipv4 ||= GeoIP.new(local_path('GeoIP.dat'))
  end

  def self.geoipv6
    @geoipv6 ||= GeoIP.new(local_path('GeoIPv6.dat'))
  end

  def self.local_path(file)
    File.expand_path("../#{file}", __FILE__)
  end
end
