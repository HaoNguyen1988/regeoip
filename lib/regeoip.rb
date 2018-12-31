require 'regeoip/version'
require 'geoip'

module Regeoip
  def self.resolve_country(ip)
    return nil if ip.nil?
    if ip.to_s =~ /^[0-9.]+$/
      geoipv4.country(ip)
    else
      geoipv6.country(ip.to_s)
    end
  end

  def self.resolve_country_code2(ip)
    if (country = resolve_country(ip))
      country.country_code2
    else
      nil
    end
  end

  def self.resolve_city(ip)
    return nil if ip.nil?
    if ip.to_s =~ /^[0-9.]+$/
      city_geoipv4.city(ip)
    else
      city_geoipv6.city(ip.to_s)
    end
  end

  private

  def self.geoipv4
    @geoipv4 ||= GeoIP.new(local_path('GeoIP.dat'))
  end

  def self.geoipv6
    @geoipv6 ||= GeoIP.new(local_path('GeoIPv6.dat'))
  end

  def self.city_geoipv4
    @city_geoipv4 ||= GeoIP.new(local_path('GeoLiteCity.dat'))
  end

  def self.city_geoipv6
    @city_geoipv6 ||= GeoIP.new(local_path('GeoLiteCityv6.dat'))
  end

  def self.local_path(file)
    File.expand_path("../#{file}", __FILE__)
  end
end
