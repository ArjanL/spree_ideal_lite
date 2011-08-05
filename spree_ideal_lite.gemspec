Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_ideal_lite'
  s.version     = '1.0.0'
  s.summary     = 'A Spree extension adding support for an external payment gateway service (i.e. offsite payment)'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Arjan Landman'
  #s.email             = 'landman.arjan@gmail.com'
  s.homepage          = 'http://www.github.com/ArjanL'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.30.1')
end
