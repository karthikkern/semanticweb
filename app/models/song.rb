class Song < ActiveRecord::Base
  has_many :refers
  has_many :books, :through => :refers
  has_many :listens
  has_many :people, :through => :listens
  has_many :describes
  has_many :articles, :through => :describes
end
