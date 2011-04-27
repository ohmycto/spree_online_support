Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_online_support'
  s.version     = '0.50.0'
  s.summary     = 'Adds integration with online support services, like zopim.com'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Service & Consulting'
  # s.email             = 'david@loudthinking.com'
  s.homepage          = 'https://github.com/secoint/spree_online_support'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = [ 'lib' ]
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.40.3')
end
