require 'bookmark'

RSpec.describe Bookmark do
  describe '#all' do
    it 'returns an array of bookmark' do
      expect(described_class.all).to eq(['www.google.com', 'www.youtube.com', 'www.instagram.com'])
    end
  end
end
