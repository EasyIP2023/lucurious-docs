require './version'
require 'asciidoctor'

namespace :gen do
  task :html do
    mkdir 'html' if !File.directory?('html')
    mkdir 'html/cmd' if !File.directory?('html/cmd')

    mkdir 'html/api' if !File.directory?('html/api')
    mkdir 'html/api/drm' if !File.directory?('html/api/drm')
    mkdir 'html/api/utils' if !File.directory?('html/api/utils')
    mkdir 'html/api/vkcomp' if !File.directory?('html/api/vkcomp')

    mkdir 'html/structs' if !File.directory?('html/structs')
    mkdir 'html/structs/drm' if !File.directory?('html/structs/drm')
    mkdir 'html/structs/utils' if !File.directory?('html/structs/utils')
    mkdir 'html/structs/vkcomp' if !File.directory?('html/structs/vkcomp')

    mkdir 'html/enums/' if !File.directory?('html/enums')
    mkdir 'html/enums/drm' if !File.directory?('html/enums/drm')
    mkdir 'html/enums/utils' if !File.directory?('html/enums/utils')
    mkdir 'html/enums/vkcomp' if !File.directory?('html/enums/vkcomp')

    Asciidoctor.convert_file 'adoc/index.adoc', backend: 'html'
    mv 'adoc/index.html', 'html'

    Asciidoctor.convert_file 'adoc/cmd/lucur.adoc', backend: 'html'
    mv 'adoc/cmd/lucur.html', 'html/cmd/'

    # Process adoc files
    FileList["adoc/api/**/*.adoc"].each { | adoc_file | Asciidoctor.convert_file adoc_file }
    FileList["adoc/structs/**/*.adoc"].each { | adoc_file | Asciidoctor.convert_file adoc_file }
    FileList["adoc/enums/**/*.adoc"].each { | adoc_file | Asciidoctor.convert_file adoc_file }

    mv FileList["adoc/api/drm/*.html"], 'html/api/drm/'
    mv FileList["adoc/api/utils/*.html"], 'html/api/utils/'
    mv FileList["adoc/api/vkcomp/*.html"], 'html/api/vkcomp/'
     
    mv FileList["adoc/enums/drm/*.html"], 'html/enums/drm/'
    mv FileList["adoc/enums/utils/*.html"], 'html/enums/utils/'
    mv FileList["adoc/enums/vkcomp/*.html"], 'html/enums/vkcomp/'
 
    mv FileList["adoc/structs/drm/*.html"], 'html/structs/drm/'
    mv FileList["adoc/structs/utils/*.html"], 'html/structs/utils/'
    mv FileList["adoc/structs/vkcomp/*.html"], 'html/structs/vkcomp/'
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