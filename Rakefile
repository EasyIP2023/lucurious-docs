require './version'
require 'asciidoctor'

namespace :gen do
  task :html do
    mkdir 'html' if !File.directory?('html')

    cp FileList["css/*"], 'html'
    cp FileList["images/*"], 'html'

    # Process adoc files
    FileList["adoc/**/*.adoc"].each { | adoc_file | Asciidoctor.convert_file adoc_file }
    mv FileList["adoc/**/*.html"], 'html'
  end
end

namespace :clean do
  task :html do
    rm_rf 'html/'
  end
end
 
task :help_msg do
  puts "Try running rake gen:html"
end

task default: :help_msg