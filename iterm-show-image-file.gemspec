#encoding: utf-8

Gem::Specification.new do |s|
  s.name          = 'iterm-show-image-file'
  s.version       = '0.1'
  s.author        = 'John Labovitz'
  s.email         = 'johnl@johnlabovitz.com'

  s.summary       = %q{Show image in iTerm}
  s.description   = %q{Issues magic escape sequence to show image file in iTerm.}
  s.homepage      = 'http://github.com/jslabovitz/iterm-show-image-file'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path  = 'lib'

  s.add_dependency 'base64', '~> 0.1'

  s.add_development_dependency 'bundler', '~> 2.4'
  s.add_development_dependency 'minitest', '~> 5.18'
  s.add_development_dependency 'minitest-power_assert', '~> 0.3'
  s.add_development_dependency 'rake', '~> 13.0'
end