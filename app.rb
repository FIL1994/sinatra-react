require 'sinatra'

set :bind, '0.0.0.0'
set :port, 80

get '/*' do
    filepath = File.join(settings.public_folder, 'index.html')
    File.read(filepath)
end
