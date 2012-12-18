# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'


# Gem building
require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "simply_useful"
  gem.summary = "A set of simply useful classes"
  gem.license = "MIT"
  gem.email = "maciej.bilas@gmail.com"
  gem.homepage = "http://github.com/maciej/simply_useful"
  gem.description = "A set of simply useful classes. Contains extensions to core Ruby classes."
  gem.authors = ["Maciej Bilas"]
  gem.rubyforge_project = %q{simply_useful}
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Run RSpec with code coverage"
task :coverage do |spec|
  ENV['COVERAGE'] = "true"
  Rake::Task["spec"].execute
end

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "simply_useful #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task :default => :spec
