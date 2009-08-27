require 'rubygems'
require 'integrity'
require 'twitter'

module Integrity
  class Notifier
    class IntegrityTwitter < Notifier::Base
      
      def self.to_haml
        File.read File.dirname(__FILE__) / "config.haml"
      end

      def deliver!
        @httpauth = Twitter::HTTPAuth.new(@config["username"], @config["pass"])

        @client = Twitter::Base.new(@httpauth)
        dev_null = @client.update(short_message)
        return true
      end
      
    end
  end
end