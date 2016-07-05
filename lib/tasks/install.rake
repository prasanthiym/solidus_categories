require 'rails/generators'

namespace :catalogs do
  desc "Copies locale files"
  task :install do
    source = File.join(Gem.loaded_specs["catalogs"].full_gem_path, "config/locales", "en.yml")
    target = File.join(Rails.root, "config/locales", "en.yml")
    FileUtils.cp_r source, target
  end
end


