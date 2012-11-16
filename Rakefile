require 'rake'
require 'rubygems'

# Gem building
begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "simply_useful"
    s.summary = "A set of simply useful classes"
    s.email = "maciej@inszy.org"
    s.homepage = "http://github.com/maciej/simply_useful"
    s.description = "A set of simply useful classes. Contains extensions to core Ruby classes."
    s.authors = ["Maciej Bilas"]
    s.rubyforge_project = %q{simply_useful}
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

# Specs
begin
  require 'rspec'
rescue LoadError
  require 'rspec'
end
begin
  require "rspec/core/rake_task"
rescue LoadError
  puts <<-EOS
	  To use rspec for testing you must install rspec gem:
	  gem install rspec
  EOS
  exit(0)
end

desc "Run the specs under spec"
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ['--options', "spec/spec.opts"]
  t.pattern = 'spec/**/*_spec.rb'
end

# RDoc
require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'Simply useful'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task :default => :spec
