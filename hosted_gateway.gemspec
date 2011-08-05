Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'hosted_gateway'
  s.version     = '1.0.0'
  s.summary     = 'A Spree extension adding support for an external payment gateway service (i.e. offsite payment)'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Josh McArthur'
  #s.email             = 'david@loudthinking.com'
  s.homepage          = 'http://www.github.com/joshmcarthur'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.30.1')
end
