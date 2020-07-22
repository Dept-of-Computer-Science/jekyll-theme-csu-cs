# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-csu-cs"
  spec.version       = "0.1.3"
  spec.authors       = ["Albert Lionelle"]
  spec.email         = ["Albert.Lionelle@colostate.edu"]

  spec.summary       = "Colorado State University CS Department Jekyll Theme"
  spec.homepage      = "https://github.com/Dept-of-Computer-Science/jekyll-theme-csu-cs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"

  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
end
