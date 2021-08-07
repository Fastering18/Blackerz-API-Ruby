# frozen_string_literal: true

require "http"
require_relative "sdk/version"

module Blackerz
  #module Sdk
  #  class Error < StandardError; end
  # Your code goes here...
  #end
  
  class Bots
  def self.bot_data(bot_id)
    res = HTTP.get("https://blackerz.herokuapp.com/api/v1/bots/" + bot_id)
     unless res.code == 200 then 
       nil
     end
     data = res.parse
     data
  end
end
end
