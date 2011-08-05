module HostedGateway
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        inject_into_file "app/assets/stylesheets/store/all.css", " *= require store/spree_ideal_lite\n", :before => /\*\//, :verbose => true
      end

      def add_images
        copy_file(File.join(File.dirname(__FILE__), '../../app/assets/images/store/ideal_lite', "#{Rails.root}/vendor/assets/images/store/hosted_gateway"))
      end
    end
  end
end
