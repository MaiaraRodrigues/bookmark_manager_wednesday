require 'bookmarks'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
  

      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers')
      Bookmark.create(url: "http//www.destryallsoftware.com", title: 'Destroy all software')
      Bookmark.create(url: "http//www.google.com", title: 'Google')
      
      all_bookmarks = Bookmark.all

      expect(all_bookmarks.length).to eq 3
      expect(all_bookmarks.first.id).to eq bookmark.id
      expect(all_bookmarks.first).to be_a Bookmark
      expect(all_bookmarks.first.title).to eq 'Makers'
      expect(all_bookmarks.first.url).to eq "http://www.makersacademy.com"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)

      
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end
  end


  # context 'tests database connection' do
  #   it 'returns successfully loaded database' do
  #     expect { Bookmark.new }.to output("Successfully loaded database\n").to_stdout
  #   end
  # end
  #
  # context 'tests database load failure message' do
  #   it 'returns error loading database' do
  #     expect { Bookmark.new }.to output("Error loading database\n").to_stdout
  #   end
  # end

end
