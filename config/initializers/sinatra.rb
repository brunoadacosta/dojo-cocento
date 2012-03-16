VIEW_PATH = File.expand_path("../../../app/views", __FILE__)
set :views, VIEW_PATH
set :public_folder, File.expand_path("../../../public", __FILE__)
enable :sessions
set :session_secret, "51c33f63d8fd46ee21067decf53dafe48181581b67ac4cc21124b0399f08ac34f7e7e2b784c59356"