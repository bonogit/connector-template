class Client < ActiveRecord::Base

	before_save { self.xml_endpoint = xml_endpoint.gsub(/\s+/, "")}
	before_save { self.mk_apikey = mk_apikey.gsub(/\s+/, "")}
	before_save { self.mk_endpoint = mk_endpoint.gsub(/\s+/, "")}
	

	validates :name, presence: true, uniqueness: {case_sensitive: false}
	validates :xml_endpoint, presence: true
	validates :mk_apikey, presence: true
	validates :mk_endpoint, presence: true
end
