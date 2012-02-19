class Contain < ActiveRecord::Base
  belongs_to :book
  belongs_to :article
end
