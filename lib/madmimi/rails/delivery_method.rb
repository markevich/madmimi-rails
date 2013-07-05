require 'madmimi'
module Madmimi
  module Rails
    class Madmimi::Rails::DeliveryMethod
      class InvalidOptions < StandardError; end;

      attr_accessor :settings

      def initialize config = {}
        fail(InvalidOptions, "Missing configuration") if config[:email].nil? || config[:api_key].nil?
        self.settings = config
      end

      def deliver! mail
        options = {
          'promotion_name' => mail.subject,
          'recipients' => mail.to.join(','),
          'from' => mail.from,
          'subject' => mail.subject,
          'remove_unsubscribe' => true
        }
        raw = mail.body.raw_source
        mimi = MadMimi.new(settings[:email], settings[:api_key])
        mimi.send_html(options, raw)
      end
    end
  end
end
