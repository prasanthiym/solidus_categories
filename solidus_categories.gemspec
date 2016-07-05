# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_categories/version'

Gem::Specification.new do |spec|
  spec.name          = "solidus_categories"
  spec.version       = SolidusCategories::VERSION
  spec.authors       = ["prasanthi"]
  spec.email         = ["prasanthi.ym@gmail.com"]

  spec.summary       = "Changes Spree Taxonomies and Taxons to Catalogs and Categories in both admin and frontend"

  spec.homepage = "https://github.com/prasanthiym/solidus_categories"
 # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
