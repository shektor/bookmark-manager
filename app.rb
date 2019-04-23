require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @book = Bookmarks.new.list
    erb :bookmarks 
  end

  run! if __FILE__ == $0
end
