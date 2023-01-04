# frozen_string_literal: true

require_relative "lib/fast_float_string/version"

Gem::Specification.new do |spec|
  spec.name = "fast_float_string"
  spec.version = FastFloatString::VERSION
  spec.authors = ["Watson"]
  spec.email = ["watson1978@gmail.com"]

  spec.summary = "PoC of fast float to string conversion."
  spec.description = "PoC of fast float to string conversion."
  spec.homepage = "https://github.com/Watson1978/fast_float_string"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Watson1978/fast_float_string"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.require_paths = ['lib', 'ext']
  spec.extensions = %w[ext/fast_float_string/extconf.rb]

  spec.add_development_dependency 'rake-compiler'
end
