require "starbucks/version"
require "starbucks/result"
require 'net/http'
require 'json'

module Starbucks
  def self.find(lat, lon, limit=100)
    res = Net::HTTP.start("www.starbucks.com", 80) {|http|
      http.get("/api/location.ashx?lat=#{lat}&long=#{lon}&limit=#{limit}")
    }
    JSON.parse(res.body).map { |r| Result.new.replace(r) }
  end

  def self.find_nearest(lat, lon)
    if block_given?
      yield self.find(lat, lon, 1).first
    else
      self.find(lat, lon, 1).first
    end
  end
end
