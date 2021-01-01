# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "argonauta"
  spec.version       = "0.1.0"
  spec.authors       = ["nunogand"]
  spec.email         = ["nunogand@gmail.com"]

  spec.summary       = "Website colecao Argonauta"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
