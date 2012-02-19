class Refer < ActiveRecord::Base
  belongs_to :song
  belongs_to :book
end
