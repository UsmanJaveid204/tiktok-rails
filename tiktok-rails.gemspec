lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tiktok/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "tiktok-rails"
  spec.version       = Tiktok::Rails::VERSION
  spec.authors       = ["Usman Javed"]
  spec.email         = ["usmanjaved.185203@gmail.com"]

  spec.summary       = "Tiktok OAuth2 Strategy for OmniAuth"
  spec.description   = "Tiktok OAuth2 Strategy for OmniAuth. This allows you to login with TikTok in your ruby app."
  spec.homepage      = "https://github.com/UsmanJaveid204/tiktok-rails"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth', '>= 1.9', '< 3'
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.8'
  spec.add_runtime_dependency 'oauth2', '>= 2.0.7'
end
