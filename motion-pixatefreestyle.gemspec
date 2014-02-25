# -*- encoding: utf-8 -*-
Version = "2.1"

Gem::Specification.new do |gem|
  gem.name          = "motion-pixatefreestyle"
  gem.version       = Version
  gem.authors       = ['Paul Colton', 'Shizuo Fujita']
  gem.email         = ['paul@pixate.com', 'watson1978@gmail.com']
  gem.description   = 'Pixate Freestyle integration for RubyMotion projects'
  gem.summary       = 'motion-pixatefreestyle allows RubyMotion projects to easily embed the Pixate Freestyle Framework.'
  gem.homepage      = 'https://github.com/Pixate/RubyMotion-PixateFreestyle'
  gem.licenses      = ["Apache-2.0"]

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  gem.files         = files
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'sass'
end
