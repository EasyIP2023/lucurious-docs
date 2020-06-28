require 'date'
require './version'

Gem::Specification.new do |spec|
  spec.name = 'lucurious-docs'
  spec.version = Docs::VERSION
  spec.date = Date.today.to_s
  spec.authors = ['EasyIP2023']
  spec.email = ['vincedav2495@gmail.com']

  spec.summary = 'This gem is meant to generate lucurious documentation using rake'
  spec.homepage = 'https://github.com/EasyIP2023/lucurious-docs'
  spec.license = 'MIT'

  spec.metadata = { 'documentation_uri' => 'TBA' }

  spec.files = Dir['[A-Z]*', 'adoc/{api,cmd,enums,structs}/**/*', 'css/**/*']

  spec.add_development_dependency 'bundler', '~> 2'
  spec.add_development_dependency 'rake', '~> 13'
end