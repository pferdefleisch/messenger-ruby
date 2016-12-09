require "messenger/version"
require "messenger/configuration"

module Messenger
  class << self
    attr_accessor :config

    def config
      @config ||= Configuration.new
    end

    def configure
      yield(config)
    end

    def reset
      @config = Configuration.new
    end
  end
end

require "messenger/params"

require "messenger/components/elements/text"
require "messenger/components/elements/image"
require "messenger/components/elements/button"
require "messenger/components/elements/bubble"

require "messenger/parameters/attachment"
require "messenger/parameters/callback"
require "messenger/parameters/entry"
require "messenger/parameters/messaging"
require "messenger/parameters/read"
require "messenger/parameters/account_linking"

require "messenger/parameters/delivery"
require "messenger/parameters/message"
require "messenger/parameters/optin"
require "messenger/parameters/postback"

require "messenger/components/elements/receipt/address"
require "messenger/components/elements/receipt/adjustment"
require "messenger/components/elements/receipt/item"
require "messenger/components/elements/receipt/order"
require "messenger/components/elements/receipt/summary"

require "messenger/components/templates/buttons"
require "messenger/components/templates/generic"
require "messenger/components/templates/receipt"

require "messenger/client"
require "messenger/request"
