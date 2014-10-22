class Anime < ActiveRecord::Base
  has_and_belongs_to_many :genres
  validates_uniqueness_of :title
end
