require 'happymapper'

module Ipgeobase
  class IpMetaData
    include HappyMapper

    tag 'ip-answer'
    element :city, String, :deep => true
    element :country, String, :deep => true
    element :region, String, :deep => true
    element :district, String, :deep => true
    element :lat, Float, :deep => true
    element :lng, Float, :deep => true

    def city
      encode(@city)
    end

    def country
      encode(@country)
    end

    def region
      encode(@region)
    end

    private

    def encode(api_string)
      api_string.encode
    end
  end
end
