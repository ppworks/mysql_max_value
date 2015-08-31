$:.push File.expand_path("../lib", __FILE__)

require "mysql_max_value"

Gem::Specification.new do |s|
  s.name        = "mysql_max_value"
  s.version     = MysqlMaxValue::VERSION
  s.authors     = ["ppworks"]
  s.email       = ["koshikawa@ppworks.jp"]
  s.homepage    = "https://github.com/ppworks/mysql_max_value"
  s.summary     = "Provide MySQL max values."
  s.description = "Provide MySQL max values like integer max."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.1"
  s.add_dependency "mysql2", "~> 0.3.0"
end
