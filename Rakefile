require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the more plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the more plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'More'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.markdown')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "more"
    gem.summary = "LESS on Rails"
    gem.description = <<-EOS
      More is a plugin for Ruby on Rails applications. It automatically
    	parses your applications .less files through LESS and outputs CSS files.
    EOS
    gem.authors = ["August Lilleaas", "Logan Raarup"]
    gem.files =  FileList["README.markdown", "MIT-LICENSE", "Rakefile", "init.rb", "lib/**/*", "rails/init.rb", "test/**/*"]
    gem.has_rdoc
    
    gem.add_dependency 'less'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end