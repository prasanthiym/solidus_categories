require 'rails/generators'

namespace :soliduscategories do
  
  desc "perform all rake tasks"
  task :install do
	  Rake::Task["soliduscategories:copy_stylesheets"].execute 
	  Rake::Task["soliduscategories:copy_helpers"].execute
          Rake::Task["soliduscategories:copy_migrations"].execute 
          Rake::Task["soliduscategories:copy_locales"].execute 
   end

  task :copy_locales do
    source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "config/locales", "en.yml")
    target = File.join(Rails.root, "config/locales", "en.yml")
    FileUtils.cp_r source, target
  end
  
  task :copy_stylesheets do
    source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "vendor/assets/stylesheets/spree/backend", "all.css")
    target = File.join(Rails.root, "vendor/assets/stylesheets/spree/backend", "all.css")
    FileUtils.cp_r source, target

    source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "vendor/assets/javascripts/spree/backend", "all.js")
    target = File.join(Rails.root, "vendor/assets/javascripts/spree/backend", "all.js")
    FileUtils.cp_r source, target
  end
  
 task :copy_helpers do
    source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "app/helpers", "render_tree_helper.rb")
    target = File.join(Rails.root, "app/helpers", "render_tree_helper.rb")
    FileUtils.cp_r source, target
    source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "app/helpers", "render_nested_options_helper.rb")
    target = File.join(Rails.root, "app/helpers", "render_nested_options_helper.rb")
    FileUtils.cp_r source, target
     source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "app/helpers", "render_sortable_tree_helper.rb")
    target = File.join(Rails.root, "app/helpers", "render_sortable_tree_helper.rb")
    FileUtils.cp_r source, target
     source = File.join(Gem.loaded_specs["solidus_categories"].full_gem_path, "app/helpers", "the_sortable_tree_helper.rb")
    target = File.join(Rails.root, "app/helpers", "the_sortable_tree_helper.rb")
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


