# frozen_string_literal: true

require "http"
require_relative "sdk/version"

module Blackerz
  class Bots
    attr_accessor :BotID, :AuthV1

    # class static method, Bots.bot_data() -> hash
    def self.bot_data(bot_id: String)
      res = HTTP.get("https://blackerz.herokuapp.com/api/v1/bots/" + bot_id)
      unless res.code == 200
        nil
      end
      data = res.parse
      data
    end

    def initialize(botID, authv1)
      self.BotID = botID
      self.AuthV1 = authv1
    end
    def data()
      Bots.bot_data(self.BotID)
    end
  end
end

#bot = Blackerz::Bots.bot_data("867571104784318464")
#p bot