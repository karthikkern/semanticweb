class Article < ActiveRecord::Base
  has_many :writes
  has_many :people, :through => :writes
  has_many :describes
  has_many :songs, :through => :describes
  has_many :contains
  has_many :books, :through => :contains
end
