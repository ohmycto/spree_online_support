module Spree
  module OnlineSupport
    # Singleton class to access the advanced cart configuration object (OnlineSupportConfiguration.first by default) and it's preferences.
    #
    # Usage:
    #   Spree::OnlineSupport::Config[:foo]                  # Returns the foo preference
    #   Spree::OnlineSupport::Config[]                      # Returns a Hash with all the google base preferences
    #   Spree::OnlineSupport::Config.instance               # Returns the configuration object (OnlineSupportConfiguration.first)
    #   Spree::OnlineSupport::Config.set(preferences_hash)  # Set the advanced cart preferences as especified in +preference_hash+
    class Config
      include Singleton
      include PreferenceAccess

      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          OnlineSupportConfiguration.find_or_create_by_name("Online Support configuration")
        end
      end
    end
  end
end

