# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.destroy_all

movie_hashes = [
  { :title => "The Dark Knight", :year => 2008, :director_id => Director.find_by_name("Christopher Nolan").id },
  { :title => "The Godfather", :year => 1972, :director_id => Director.find_by_name("Francis Ford Coppola").id },
  { :title => "The Shawshank Redemption", :year => 1994, :director_id => Director.find_by_name("Frank Darabont").id },
  { :title => "The Godfather: Part II", :year => 1974, :director_id => Director.find_by_name("Francis Ford Coppola").id }
]

movie_hashes.each do |m_hash|
  m = Movie.new
  m.title = m_hash[:title]
  m.year = m_hash[:year]
  m.director_id = m_hash[:director_id]
  m.save
end
puts "There are now #{Movie.count} rows in the movies table."
