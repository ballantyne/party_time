require "party_time/version"
require 'rest_client'
require 'erb'
require 'hashie'
require 'json'

module PartyTime
  def self.base_url
    'http://politicalpartytime.org/api/v1/'
  end

  def self.request(endpoint, options)
    opts = options.merge('apikey' => PartyTime::Config.api_key, 'format' => 'json')
    url = base_url + endpoint + "?" + opts.to_query
    # puts url
    response = JSON.parse(RestClient.get(url).to_str).collect {|i| Hashie::Mash.new(i) }
    response
  end
end

class Hash 
  def to_query 
    self.map{|k,v| "#{CGI.escape(k.to_s)}=#{CGI.escape(v)}"}.join("&") 
  end 
end


Dir.glob(File.dirname(__FILE__) + '/party_time/*.rb').each { |f| require f }