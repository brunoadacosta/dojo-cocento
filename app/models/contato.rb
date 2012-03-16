class Contato
  include MongoMapper::Document
  
  key :nome, String
  key :idade, Integer
  
  validates_presence_of :nome
end