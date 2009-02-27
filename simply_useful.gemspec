# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{simply_useful}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Maciej Bilas"]
  s.date = %q{2009-02-27}
  s.description = %q{A set of simply useful classes}
  s.email = %q{maciej@inszy.org}
  s.files = ["VERSION.yml", "lib/java_native2ascii.rb", "lib/format.rb", "lib/has_attributes.rb", "lib/bsearch.rb", "spec/spec_helper.rb", "spec/spec.opts", "spec/bsearch_spec.rb", "spec/has_attributes_spec.rb", "spec/java_native2ascii_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/maciej/simply_useful}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A set of simply useful classes}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
