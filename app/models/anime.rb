class Anime < ActiveRecord::Base
  has_and_belongs_to_many :genre
  validates_uniqueness_of :title
end
