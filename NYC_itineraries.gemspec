
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "NYC_itineraries/version"

Gem::Specification.new do |spec|
  spec.name          = "NYC_itineraries"
  spec.version       = NYCItineraries::VERSION
  spec.authors       = ["Angie Kassab"]
  spec.email         = ["anasab12@gmail.com"]

  spec.summary       = "A gem of New York City itineraries taken from https://www.frommers.com."
  spec.description   = "Users can select which itinerary they would like to read: a one-day, two-day, three-day or food & wine itinerary."
  spec.homepage      = "https://github.com/AngieAngelica/NYC_itineraries"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = ["NYC_itineraries"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
  spec.add_dependency "require_all"
end
