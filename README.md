# Madmimi::Rails

ActionMailer delivery method for sending emails via madmimi}

## Installation

Add this line to your application's Gemfile:

    gem 'madmimi-rails'

Execute:

    $ bundle
    
Run generator:

    $ rails g madmimi:rails:install
    
Copy ```config/madmimi.yml.template``` to ```config/madmimi.yml```

Change delivery method in your enviroment

    config.action_mailer.delivery_method = :madmimi
    
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
