class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title, :year
  belongs_to :director
  has_many :roles
  has_many :votes
  has_many :actors, :through => :roles
  validates :title, :director, presence: true

end
