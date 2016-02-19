# Home Page
# http://localhost:4567/

get '/' do ||
  liquid :home, :locals => {}
end