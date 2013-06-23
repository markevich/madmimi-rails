class Madmimi::Rails::Railtie < Rails::Railtie
  initializer 'madmimi-rails.add_delivery_method' do
    begin
      settings = YAML.load_file("#{Rails.root}/config/madmimi.yml")
    rescue Errno::ENOENT
      fail("Please add config/madmimi.yml file")
    end
    ActionMailer::Base.add_delivery_method :madmimi, Madmimi::Rails::DeliveryMethod, email: settings[:email], api_key: settings[:api_key]
  end
end
