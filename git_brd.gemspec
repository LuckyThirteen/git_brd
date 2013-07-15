# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_brd/version'

Gem::Specification.new do |spec|
  spec.name          = 'git_brd'
  spec.version       = GitBrd::VERSION
  spec.authors       = ['LuckyThirteen']
  spec.email         = ['baloghzsof@gmail.com']
  spec.description   = %q{custom git command for deleting local branches matching a given regex}
  spec.summary       = %q{Git branch regex delete}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'git'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
