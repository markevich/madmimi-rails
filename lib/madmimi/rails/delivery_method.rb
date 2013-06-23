module Madmimi
  module Rails
    class Madmimi::Rails::DeliveryMethod
      class InvalidOptions < StandardError; end;

      attr_accessor :settings

      def initialize config = {}
        raise(InvalidOptions, "Missing configuration") if config[:email].nil? || config[:api_key].nil?
        self.settings = config
      end

      def deliver! mail
        puts mail.inspect
      end
    end
  end
end
