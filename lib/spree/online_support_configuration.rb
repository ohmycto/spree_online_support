module Spree
  class OnlineSupportConfiguration < Preferences::Configuration
    preference :enabled, :boolean, :default => true
    preference :zopim_key, :string, :default => ''
  end
end
