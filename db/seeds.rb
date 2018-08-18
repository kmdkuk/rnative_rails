require 'csv'

CSV.foreach('db/csv/boards.csv') do |row|
  Board.create!(title: row[1], description: row[2])
end

CSV.foreach('db/csv/users.csv') do |row|
  User.create!(name: row[1], sex: row[2], age: row[3])
end

CSV.foreach('db/csv/comments.csv') do |row|
  Comment.create!(board_id: row[1], user_id: row[2], comment: row[3])
end
