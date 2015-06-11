module SpreeDiscount
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
      end

      def add_stylesheets
        inject_into_file "app/assets/stylesheets/spree/frontend/all.css", " *= require spree/frontend/spree_discount\n", :before => /\*\//, :verbose => true
      end

      def add_migrations
        run 'rake railties:install:migrations FROM=spree_discount'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end
    end
  end
end
