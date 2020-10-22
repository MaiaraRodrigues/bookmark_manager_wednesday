require 'pg'

def setup_test_database 
  connection = PG.connect(dbname: 'bookmark_manager_test')
# Clear the bookmarks table
  connection.exec("TRUNCATE all_bookmarks;")
end 
