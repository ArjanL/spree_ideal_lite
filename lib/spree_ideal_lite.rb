require 'spree_core'
require 'spree_ideal_lite_hooks'

module SpreeIdealLite
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      IdealLite.register
      CheckoutController.send(:include, SpreeIdealLite::CheckoutControllerExt)
      Admin::PaymentsController.send(:include, SpreeIdealLite::AdminPaymentsControllerExt)
    end

    config.to_prepare &method(:activate).to_proc
  end
end

