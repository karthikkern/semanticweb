class Book < ActiveRecord::Base
  has_many :contains
  has_many :articles, :through => :contains
  has_many :refers
  has_many :songs, :through => :refers
  has_many :likes
  has_many :people, :through => :likes
end
