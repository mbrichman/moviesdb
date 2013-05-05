class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor
  validates :movie, :actor, :presence => true
end
