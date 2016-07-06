require 'rails/generators'

namespace :soliduscategories do
  
  task :install do
    source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "config/locales", "en.yml")
    target = File.join(Rails.root, "config/locales", "en.yml")
    FileUtils.cp_r source, target
  end

  task :copy_migrations do
    source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "db", "20160701150045_add_position_to_spree_properties.rb")
    target = File.join(Rails.root, "db/migrate", "20160701150045_add_position_to_spree_properties.rb")
    FileUtils.cp_r source, target

    source1 = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "db", "20160705145644_add_fields_to_properties.rb")
    target1 = File.join(Rails.root, "db/migrate", "20160705145644_add_fields_to_properties.rb")
    FileUtils.cp_r source1, target1
  end

end


