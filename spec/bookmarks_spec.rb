require 'bookmark'

RSpec.describe Bookmark do
  describe '#all' do
    it 'returns all saved bookmarks' do
      connection = PG.connect :dbname => 'bookmark_manager_test'
      connection.exec "INSERT INTO bookmarks (url) VALUES ('www.google.com');"
      connection.exec "INSERT INTO bookmarks (url) VALUES ('www.youtube.com');"
      connection.exec "INSERT INTO bookmarks (url) VALUES ('www.instagram.com');"
      
      expect(described_class.all).to include('www.google.com')
      expect(described_class.all).to include('www.youtube.com')
      expect(described_class.all).to include('www.instagram.com')
    end
  end
end
