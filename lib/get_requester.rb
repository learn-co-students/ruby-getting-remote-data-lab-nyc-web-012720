# Write your code here
require 'net/http'
require 'open-uri'
require 'json'


class GetRequester
    attr_accessor :url 
    def initialize(url)
        @url = url
    end 

    # URL = @url 

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end 

    def parse_json
        program = JSON.parse(self.get_response_body)
        program
    end 

end