# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name         = "selenium-webdriver"
  s.version      = '2.35.1'
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Jari Bakken"]
  s.email        = ["jari.bakken@gmail.com"]
  s.homepage     = "http://selenium.googlecode.com"
  s.files        = `git ls-files`.split("\n")
  s.executables  = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.summary      = "The next generation developer focused tool for automated testing of webapps"
  s.description  = "WebDriver is a tool for writing automated tests of websites. It aims to mimic the behaviour of a real user, and as such interacts with the HTML of the application."

  s.add_dependency 'multi_json', '~> 1.0'
  s.add_dependency 'childprocess', '>= 0.2.5'
  s.add_dependency 'websocket', '~> 1.0.4'
  s.add_dependency 'zipruby', '0.3.6'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rack'
  s.add_development_dependency 'ci_reporter'
  s.add_development_dependency 'webmock'


  s.require_paths = ['lib', 'test']
end
