# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "simply_useful"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Maciej Bilas"]
  s.date = "2012-12-18"
  s.description = "A set of simply useful classes. Contains extensions to core Ruby classes."
  s.email = "maciej.bilas@gmail.com"
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "MIT-LICENSE",
    "README",
    "Rakefile",
    "VERSION.yml",
    "lib/simply_useful.rb",
    "lib/simply_useful/all.rb",
    "lib/simply_useful/bsearch.rb",
    "lib/simply_useful/core_ext.rb",
    "lib/simply_useful/core_ext/hash.rb",
    "lib/simply_useful/core_ext/module/property_delegation.rb",
    "lib/simply_useful/format.rb",
    "lib/simply_useful/has_attributes.rb",
    "lib/simply_useful/java_native2ascii.rb",
    "simply_useful.gemspec",
    "spec/bsearch_spec.rb",
    "spec/core_ext/hash_spec.rb",
    "spec/core_ext/property_delegation_spec.rb",
    "spec/has_attributes_spec.rb",
    "spec/java_native2ascii_spec.rb",
    "spec/simply_useful_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/maciej/simply_useful"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "simply_useful"
  s.rubygems_version = "1.8.24"
  s.summary = "A set of simply useful classes"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.2.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, ["~> 3"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.2.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["~> 3"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.12.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.2.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["~> 3"])
  end
end

