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
  gemspec.name = 'call_stack'
  gemspec.summary = 'call_stack is a ruby gem to display method call stack in browser.'
  gemspec.description = 'call_stack is a ruby gem to display method call stack in browser.'
  gemspec.email = 'flyerhzm@gmail.com'
  gemspec.homepage = ''
  gemspec.authors = ['Richard Huang']
  gemspec.files.exclude '.gitignore'
  gemspec.executables << 'call_stack'
end
Jeweler::GemcutterTasks.new


