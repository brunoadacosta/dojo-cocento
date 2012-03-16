require "bundler"
ENV["RACK_ENV"] = "development"

Bundler.setup(:default, ENV["RACK_ENV"])
Bundler.require

Dir[File.expand_path("../../config/initializers/**/*.rb", __FILE__)].sort.each do |file|
  require file
end

Dir[File.expand_path("../../app/**/*.rb", __FILE__)].sort.each do |file|
  require file
end


helpers ApplicationHelper