# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zenvia/version'

Gem::Specification.new do |spec|
  spec.name          = "zenvia-rb"
  spec.version       = Zenvia::VERSION
  spec.authors       = ["Jeferson Huan"]
  spec.email         = ["jeferson.hsa@gmail.com"]

  spec.summary       = %q{Zenvia!}
  spec.description   = %q{RubyGem to send SMS through Zenvia's api}
  spec.homepage      = "https://github.com/jefersonhuan/zenvia-rb"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'httparty', '0.13.7'
end
