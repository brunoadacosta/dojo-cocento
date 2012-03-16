require "mongo_mapper"

MongoMapper.config = {
  :development => {"uri" => "mongodb://localhost/contatos_development"}, 
  :test => {"uri" => "mongodb://localhost/contatos_test"}, 
  :production => {"uri" => ENV["MONGOLAB_URI"]}
}

MongoMapper.connect(Sinatra::Base.environment)