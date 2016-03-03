require 'uri'
require 'cgi'
class StaticPagesController < ApplicationController
  def home
  	initial_url = URI.parse(request.original_url)
  	parsed_url = initial_url.query
  	#check if user 
  	if !(parsed_url == nil)
  		params_url = CGI.parse(parsed_url)
  		if (["amount", "api_key"] - params_url.keys).empty?
  			@amount_to_invest = params_url["amount"]
  			@api_key = params_url["api_key"]
  			@valid_url = true
  		end

  
  	end
  	
  	
  	
  	#incoming_url_params = URI(incoming_url).query
  end


end
