class Madmimi::Rails::DeliveryMethod
  class InvalidOptions < StandardError; end;

  attr_accessor :settings

  def initialize config = {}
    raise(InvalidOptions, "Missing configuration") if config[:email].nil? || config[:api_key].nil?
    self.settings = config
  end
end
