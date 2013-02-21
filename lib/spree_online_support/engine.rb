module Spree::OnlineSupport
end
module SpreeOnlineSupport
  class Engine < Rails::Engine
    engine_name 'spree_online_support'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.online_support.preferences", :before => :load_config_initializers do |app|
      Spree::OnlineSupport::Config = Spree::OnlineSupportConfiguration.new
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
