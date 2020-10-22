require 'bookmarks'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO all_bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO all_bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO all_bookmarks (url) VALUES('http://www.google.com');")
      
      all_bookmarks = Bookmark.all

      expect(all_bookmarks).to include("http://www.destroyallsoftware.com")
      expect(all_bookmarks).to include("http://www.google.com")
      expect(all_bookmarks).to include("http://www.makersacademy.com")
    end
  end
  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com')
  
      expect(Bookmark.all).to include 'http://www.testbookmark.com'
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
