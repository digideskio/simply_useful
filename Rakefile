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
  require 'spec'
rescue LoadError
  require 'spec'
end
begin
  require 'spec/rake/spectask'
rescue LoadError
  puts <<-EOS
	  To use rspec for testing you must install rspec gem:
	  gem install rspec
  EOS
  exit(0)
end

desc "Run the specs under spec/models"
Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ['--options', "spec/spec.opts"]
  t.spec_files = FileList['spec/**/*_spec.rb']
end

# Coverage
begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |t|
    t.libs << 'test'
    t.test_files = FileList['test/**/*_test.rb']
    t.verbose = true
  end
rescue LoadError
  puts "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
end

# RDoc
require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'Simply useful'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

# Cucumber
begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
  puts "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
end

task :default => :spec
