# -*- encoding: utf-8 -*-
lib = File.expand_path('../../sunspot/lib/', __FILE__)

$:.unshift(lib) unless $:.include?(lib)

require 'sunspot/version'

Gem::Specification.new do |s|
  s.name = 'sunspot_solr'
  s.version = Sunspot::VERSION
  s.executables = ['sunspot-solr']
  s.email = 'mat@patch.com'
  s.homepage = 'https://github.com/outoftime/sunspot/tree/master/sunspot_solr'
  s.summary = 'Bundled Solr distribution for use with sunspot'
  s.description = <<TEXT
  Sunspot::Solr provides a bundled Solr distribution for use with Sunspot.
  Typical deployment environments will require more configuration, but this
  distribution is well suited to development and testing.
TEXT
  s.authors = ['Mat Brown', 'Peer Allan', 'Dmitriy Dzema', 'Benjamin Krause', 'Marcel de Graaf', 'Brandon Keepers', 'Peter Berkenbosch', 'Brian Atkinson', 'Tom Coleman', 'Matt Mitchell', 'Nathan Beyer', 'Kieran Topping', 'Nicolas Braem', 'Jeremy Ashkenas', 'Dylan Vaughn', 'Brian Durand', 'Sam Granieri', 'Nick Zadrozny', 'Jason Ronallo']
  s.rubyforge_project = 'sunspot'
  s.files = Dir.glob('[A-Z]*') +
            Dir.glob('{bin,lib,spec,tasks,templates}/**/*') +
            Dir.glob('solr/{etc,lib,webapps}/**/*') +
            Dir.glob('solr/solr/{conf,lib}/*') << 'solr/start.jar'
  s.add_runtime_dependency 'escape', '0.0.4'
  s.add_development_dependency 'rspec', '~> 1.1'
end
