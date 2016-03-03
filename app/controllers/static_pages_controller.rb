require 'uri'
require 'cgi'
class StaticPagesController < ApplicationController
  def home
  	initial_url = URI.parse(request.original_url)
  	parsed_url = initial_url.query
  	#check if user 
  	if !(parsed_url == nil)
  		params_url = CGI.parse(parsed_url)
  		if (["amount", "time_period"] - params_url.keys).empty?
  			@amount = params_url["amount"]
  			@time_period = params_url["time_period"]
  			@valid_url = true
  		end

  
  	end
  	
  	
  	
  	#incoming_url_params = URI(incoming_url).query
  end


end
