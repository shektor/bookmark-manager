require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  run! if __FILE__ == $0
end
