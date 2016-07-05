module SolidusCategories
  module Generators
    class InstallGenerator < Rails::Generators::Base
  
     def copy_initializer
       copy_file 'config/locales/en.yml', 'config/locales/en.yml'
     end

   end
 end
end
