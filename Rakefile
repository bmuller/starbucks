require "bundler/gem_tasks"
require 'rdoc/task'

desc "Create documentation"
RDoc::Task.new("doc") { |rdoc|
  rdoc.title = "Starbucks - Find them."
  rdoc.rdoc_dir = 'docs'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
}