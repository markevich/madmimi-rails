require 'debugger'
class Madmimi::Rails::Railtie < Rails::Railtie
  initializer 'madmimi-rails.add_delivery_method' do
    begin
      settings = YAML.load_file("#{Rails.root}/config/madmimi.yml")[Rails.env]
    rescue Errno::ENOENT
      settings = {}
    end
    ActionMailer::Base.add_delivery_method :madmimi, Madmimi::Rails::DeliveryMethod, email: settings[:email], api_key: settings[:api_key]
  end

  generators do
    require 'generators/madmimi/rails/install_generator'
  end
end
