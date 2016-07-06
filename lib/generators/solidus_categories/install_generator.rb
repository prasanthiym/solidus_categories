module SolidusCategories  
  module Generators
    class InstallGenerator < Rails::Generators::Base
       
      
      def copy_initializer
       source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "config/locales", "en.yml")
       target = File.join(Rails.root, "config/locales", "en.yml")
       FileUtils.cp_r source, target 
      end

     
    
    end
  end
end  
