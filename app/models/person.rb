class Person < ActiveRecord::Base
  has_many :likes
  has_many :books, :through => :likes
  has_many :listens
  has_many :songs, :through => :listens
  has_many :writes
  has_many :articles, :through => :writes
end
