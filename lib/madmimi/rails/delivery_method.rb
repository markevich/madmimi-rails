class Madmimi::Rails::DeliveryMethod
  class InvalidOptions < StandardError; end;

  def initialize config = {}
    raise(InvalidOptions, "Missing configuration") if config[:email].nil? || config[:api_key].nil?
  end
end
