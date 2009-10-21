require 'rake'
require 'spec/rake/spectask'
require 'jeweler'

desc 'Default: run unit tests.'
task :default => :spec

desc "Run all specs in spec directory"
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Jeweler::Tasks.new do |gemspec|
  gemspec.name = 'monitor'
  gemspec.summary = 'monitor is a ruby gem to monitor method call stacks in browser.'
  gemspec.description = 'monitor is a ruby gem to monitor method call stacks in browser.'
  gemspec.email = 'flyerhzm@gmail.com'
  gemspec.homepage = ''
  gemspec.authors = ['Richard Huang']
  gemspec.files.exclude '.gitignore'
  gemspec.add_dependency 'sinatra'
  gemspec.add_dependency 'unroller'
  gemspec.executables << 'monitor'
end
Jeweler::GemcutterTasks.new


