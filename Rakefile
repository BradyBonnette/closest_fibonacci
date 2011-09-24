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

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "closest_fibonacci"
  gem.homepage = "http://github.com/BradyBonnette/closest_fibonacci"
  gem.license = "MIT"
  gem.summary = "A gem to find the closest Fibonacci number without going over (\"Price is Right Rules\") when given a specific integer "
  gem.description = "This gem will add a .closest_fibonacci method to the Integer class.  When invoked on an instance of an Integer (on either Fixnum or Bignum), it will return the largest Fibonacci number that is less than or equal to the integer on which it was called.  For example: '156.closest_fibonacci => 144'"
  gem.email = "brady.bonnette@gmail.com"
  gem.authors = ["Brady Bonnette"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "closest_fibonacci #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
