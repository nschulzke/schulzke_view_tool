# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "schulzke_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "schulzke_view_tool"
  spec.version       = SchulzkeViewTool::VERSION
  spec.authors       = ["Nathan Schulzke"]
  spec.email         = ["nschulzke@gmail.com"]

  spec.summary       = %q{View-specific methods following along with DevCamp tutorials.}
  spec.homepage      = "https://github.com/nschulzke/schulzke_view_tool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
