require_relative './lib/top_schools/version'

# lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = "top_schools"
  s.version       = TopSchools::VERSION
  s.authors       = ["thomashines"]
  s.email         = ["thomashines@gmail.com"]
  s.files       = ["lib/top_schools.rb", "lib/top_schools/cli.rb", "lib/top_schools/scraper.rb", "lib/top_schools/version.rb", "lib/top_schools/school.rb", "config/environment.rb"]
  s.homepage    = 'http://rubygems.org/gems/top-schools'
  s.summary       = "Top Coding Schools and Bootcamps"
  s.description   = "Provides details on the 35 top coding schools in the USA"
  s.homepage      = 'http://rubygems.org/gems/top-schools'
  s.license       = "MIT"

  s.executables << 'top-schools'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end
