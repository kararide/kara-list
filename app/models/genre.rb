class Genre < ActiveRecord::Base
	has_and_belongs_to_many :animes
  validates_uniqueness_of :name
end
