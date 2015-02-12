# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ddp/server/version'

Gem::Specification.new do |spec|
	spec.name          = 'ddp-server'
	spec.version       = DDP::Server::VERSION
	spec.authors       = ['Tinco Andringa']
	spec.email         = ['mail@tinco.nl']
	spec.description   = 'TODO: Write a gem description'
	spec.summary       = 'TODO: Write a gem summary'
	spec.homepage      = ''
	spec.license       = 'MIT'

	spec.files         = `git ls-files`.split($RS)
	spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
	spec.require_paths = ['lib']

	spec.add_development_dependency 'bundler', '~> 1.3'
	spec.add_development_dependency 'rake'

	spec.add_dependency 'celluloid-websocket'
end