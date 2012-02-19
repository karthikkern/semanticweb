class Listen < ActiveRecord::Base
  belongs_to :person
  belongs_to :song
end
