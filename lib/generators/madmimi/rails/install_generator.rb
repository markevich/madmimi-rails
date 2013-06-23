require 'rails/generators'
class Madmimi::Rails::InstallGenerator < Rails::Generators::Base
  desc 'Creates madmimi.yml config template'
  def self.source_root
    @source_root ||= File.expand_path('../templates', __FILE__)
  end

  def create_config_file
    template 'madmimi.yml', File.join('config', 'madmimi.yml.template')
  end
end
